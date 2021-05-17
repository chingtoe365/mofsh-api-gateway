package gateway.controllers;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.util.JSONPObject;
import gateway.exceptions.RegistrationException;
import gateway.model.*;
import gateway.respositories.ServiceRepository;
import gateway.services.interfaces.ConnectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PrePostAnnotationSecurityMetadataSource;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("aiservice/")
public class AiServiceController extends Controller {
    public AiServiceController(){}

    // TODO: depreciate it to avoid using repo directly
    @Autowired
    ServiceRepository aiServiceRepo;

    @Autowired
    ConnectionService connectionService;

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

    @RequestMapping(value = "connectService/{aiServiceId}/{aiServiceInputContent}", method = RequestMethod.POST)
    public ResponseEntity<String> connectToAiService(@PathVariable("aiServiceId")int aiServiceId, @RequestBody(required = true)AiServiceInput aiServiceInput){
        ResponseEntity<String> response = null;
        HttpStatus st = HttpStatus.INTERNAL_SERVER_ERROR;
        String str = "";
        if(aiServiceInput.getServiceId() == null){
            aiServiceInput.setServiceId(aiServiceId);
        }
        try{
            str = connectionService.askAi(aiServiceInput);
            st = HttpStatus.OK;
        }catch (Throwable e){
            Throwable err = e;
        }
        response = new ResponseEntity<String>(str, st);
        return response;
    }

}
