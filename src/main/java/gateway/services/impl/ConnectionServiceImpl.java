package gateway.services.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import gateway.exceptions.RegistrationException;
import gateway.model.*;
import gateway.respositories.ServiceArgumentNameRepository;
import gateway.respositories.ServiceArgumentRepository;
import gateway.respositories.ServiceArgumentTypeRepository;
import gateway.respositories.ServiceRepository;
import gateway.services.interfaces.ConnectionService;
import net.bytebuddy.implementation.bytecode.Throw;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.Registration;
import java.util.*;

/**
 * This class handles all connectivity implementations
 * @author jintaolong@brookes.ac.uk
 * @created 25/03/2021
 * @updated 25/03/2021
 */

@Service
public class ConnectionServiceImpl implements ConnectionService {
    @Autowired
    ServiceRepository serviceRepository;

    @Autowired
    ServiceArgumentRepository serviceArgumentRepository;

    @Autowired
    ServiceArgumentNameRepository serviceArgumentNameRepository;

    @Autowired
    ServiceArgumentTypeRepository serviceArgumentTypeRepository;

    @Override
    public void registerAiService(AiServiceRegistrationRequest request) throws RegistrationException {
        AiService aiService = new AiService();
//        Set<AiServiceArgument> aiServiceArguments = new HashSet<AiServiceArgument>();
        aiService.setAiServiceName(request.getServiceName());
        aiService.setAiServiceDescription(request.getServiceDescription());
        aiService.setEndpoint(request.getServiceUrlEndpoint());
        aiService.setMethod(request.getServiceRequestMethod());
        aiService.setPort(request.getServicePort());
        AiService savedService = serviceRepository.save(aiService);
        for(Map.Entry<String, String> entry: request.getServiceArgumentDictionary().entrySet()){
            String argumentNameText = entry.getKey();
            String argumentTypeText = entry.getValue();
            AiServiceArgument argumentPair = new AiServiceArgument();
            Optional<AiServiceArgumentName> argumentName = serviceArgumentNameRepository.findByArgumentName(argumentNameText);
            Optional<AiServiceArgumentType> argumentType = serviceArgumentTypeRepository.findByArgumentType(argumentTypeText);
            if(!argumentName.isPresent()){
                AiServiceArgumentName argNameNewEntry = new AiServiceArgumentName();
                argNameNewEntry.setArgumentName(argumentNameText);
                argumentPair.setAiServiceArgumentName(
                        serviceArgumentNameRepository.save(argNameNewEntry)
                );
            }else{
                argumentPair.setAiServiceArgumentName(argumentName.get());
            }
            if(!argumentType.isPresent()){
                serviceRepository.deleteById(savedService.getId());
                throw new RegistrationException("Argument type not supported", new Throwable("Argument type not supported"));
            }
            argumentPair.setAiServiceArgumentType(argumentType.get());
            argumentPair.setAiService(savedService);
            serviceArgumentRepository.save(argumentPair);
        }
    }

    @Override
    public Optional<AiService> findServiceById(Integer serviceId) {
        Optional<AiService> service = serviceRepository.findById(serviceId);
        if (service.isPresent()){
            return service;
        }
        return null;
    }

    @Override
    public List<AiServiceArgument> findAllArgumentsByServiceId(Integer integer) {
        return null;
    }
}
