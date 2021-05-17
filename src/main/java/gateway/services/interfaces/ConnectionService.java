package gateway.services.interfaces;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.util.JSONPObject;
import gateway.exceptions.RegistrationException;
import gateway.model.*;
import org.json.JSONException;

import java.io.IOException;
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
    public String askAi(AiServiceInput serviceInput) throws IOException, ClassNotFoundException, JSONException;
}
