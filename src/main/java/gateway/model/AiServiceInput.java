package gateway.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * This class represents the input accompanying the request to call an AI service
 * @author jintaolong@brookes.ac.uk
 * @created 07/04/2021
 * @updated 12/05/2021
 */
public class AiServiceInput implements Serializable {
    private static final long serialVersionUID = -81154561654L;

    private Integer serviceId;

    public Integer getServiceId() {
        return serviceId;
    }

    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }

    public AiServiceInput() {
        serviceId = null;
    }
    private Map<String, Object> arguments;

    public Map<String, Object> getArguments() {
        return arguments;
    }

    public void setArguments(Map<String, Object> arguments) {
        this.arguments = arguments;
    }

    @Override
    public String toString() {
        return "AiServiceInput{" +
                "arguments=" + arguments +
                '}';
    }
}
