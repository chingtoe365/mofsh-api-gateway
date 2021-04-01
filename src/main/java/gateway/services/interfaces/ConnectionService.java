package gateway.services.interfaces;

import gateway.exceptions.RegistrationException;
import gateway.model.AiService;
import gateway.model.AiServiceArgument;
import gateway.model.AiServiceRegistrationRequest;

import java.util.List;
import java.util.Optional;

/**
 * This is an interface class for service handling the connection between AI service users and AI services
 * @author jintaolong@brookes.ac.uk
 * @created 24/03/2021
 * @updated 24/03/2021
 */
public interface ConnectionService {
    public void registerAiService(AiServiceRegistrationRequest request) throws RegistrationException;
    public Optional<AiService> findServiceById(Integer integer);
    public List<AiServiceArgument> findAllArgumentsByServiceId(Integer integer);

}
