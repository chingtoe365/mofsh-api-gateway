package gateway.controllers;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.util.JSONPObject;
import gateway.exceptions.RegistrationException;
import gateway.model.*;
import gateway.respositories.ServiceRepository;
import gateway.respositories.UserRepository;
import gateway.respositories.UserServiceRelationMapRepository;
import gateway.security.jwt.JwtTokenUtil;
import gateway.services.interfaces.ConnectionService;
import io.jsonwebtoken.ExpiredJwtException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PrePostAnnotationSecurityMetadataSource;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("aiservice/")
public class AiServiceController extends Controller {
    public AiServiceController(){}

    // TODO: depreciate it to avoid using repo directly
    @Autowired
    ServiceRepository aiServiceRepo;

    @Autowired
    UserRepository userRepository;

    @Autowired
    UserServiceRelationMapRepository userServiceRelationMapRepository;

    @Autowired
    ConnectionService connectionService;

    @Autowired
    JwtTokenUtil jwtTokenUtil;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "/{aiServiceID}", method = RequestMethod.GET)
    public ResponseEntity<String> findById(@PathVariable("aiServiceID") int aiServiceId){
        ResponseEntity<String> response = null;
        HttpStatus st = HttpStatus.INTERNAL_SERVER_ERROR;
        String serviceName = "";
        Optional<AiService> service = aiServiceRepo.findById(aiServiceId);
        if(service.isPresent()){
            st = HttpStatus.OK;
            serviceName = service.get().getAiServiceName();
        }
        response = new ResponseEntity<String>(String.format("Service is %s", serviceName), st);
        return response;
    }

    @RequestMapping(value = "/getConnectionInfo/{aiServiceID}", method = RequestMethod.GET)
    public ResponseEntity<String> getConnectionInfoByServiceId(@PathVariable("aiServiceID") int aiServiceId){
        ResponseEntity<String> response = null;
        HttpStatus st = HttpStatus.INTERNAL_SERVER_ERROR;
        String str = "";
        Optional<AiService> service = connectionService.findServiceById(aiServiceId);
        if (service.isPresent()){
            st = HttpStatus.OK;
            str = "Service{" + service + "}";
        }
//        List<ServiceArgument> serviceArguments = connectionService.findAllArgumentsByServiceId(aiServiceId);
        response = new ResponseEntity<String >(str, st);
        return response;
    }

    @RequestMapping(value="registerService/", method = RequestMethod.POST)
    public ResponseEntity<String> registerAiService(@RequestBody(required = true)AiServiceRegistrationRequest registrationRequest) throws RegistrationException {
        ResponseEntity<String> response = null;
        HttpStatus st = HttpStatus.INTERNAL_SERVER_ERROR;
        String str = "";
        try{
            connectionService.registerAiService(registrationRequest);
            st = HttpStatus.CREATED;
        } catch (Throwable e){
            st = HttpStatus.BAD_REQUEST;
            throw new RegistrationException("Cannot register service", e);
        }
        response = new ResponseEntity<String >(str, st);
        return response;
    }

    @RequestMapping(value = "connectService/{aiServiceId}", method = RequestMethod.POST)
    public ResponseEntity<String> connectToAiService(@PathVariable("aiServiceId")int aiServiceId, @RequestBody(required = true)AiServiceInput aiServiceInput){
        ResponseEntity<String> response = null;
        HttpStatus st = HttpStatus.INTERNAL_SERVER_ERROR;
        String str = "";
        // check user permisson to consume service
        String jwtToken = request.getHeader("Authorization").substring(7);
        try{
            String username = jwtTokenUtil.getUsernameFromToken(jwtToken);
            Optional<User> user = userRepository.findByUsername(username);
            if(user.isPresent()){
                UUID userId = user.get().getUserId();
                Optional<List<Integer>> availableServicesForUser = userServiceRelationMapRepository.findServicesByUserId(userId);
                if(availableServicesForUser.isPresent()){
                    List<Integer> availableServices = availableServicesForUser.get();
                    if(availableServices.contains(aiServiceId)){
                        if(aiServiceInput.getServiceId() == null){
                            aiServiceInput.setServiceId(aiServiceId);
                        }
                        try{
                            str = connectionService.askAi(aiServiceInput);
                            st = HttpStatus.OK;
                        }catch (Throwable e){
                            Throwable err = e;
                            st = HttpStatus.BAD_REQUEST;
                            str = "Failed connecting to service";
                        }
                    }
                    else {
                        st = HttpStatus.UNAUTHORIZED;
                        str = "User not authorised to consume service with ID: " + aiServiceId
                            + ", please contact provider to subscribe first";
                    }
                }
                else {
                    st = HttpStatus.UNAUTHORIZED;
                    str = "User not authorised to consume service with ID: " + aiServiceId
                            + ", please contact provider to subscribe first";
                }
            }else{
//                System.out.println("Username does not exist");
                st = HttpStatus.UNAUTHORIZED;
                str = "Username does not exist";
            }
        } catch (ExpiredJwtException e){
            System.out.println("JWT Token has expired");
        }
        response = new ResponseEntity<String>(str, st);
        return response;
    }

}
