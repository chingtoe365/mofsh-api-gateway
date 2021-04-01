package gateway.model;

import java.io.Serializable;
import java.util.Map;
import java.util.Objects;

/**
 * AI service registration request DTO class
 * @author jintaolong@brookes.ac.uk
 * @created 24/03/2021
 * @updated 24/03/2021
 */
public class ServiceRegistrationRequest implements Serializable {
    private static final long serialVersionUID = -4511513151561L;

    private String serviceName;
    private String serviceDescription;
    private String serviceUrlEndpoint;
    private String serviceRequestMethod;
    private int servicePort;
    private Map<String, String> serviceArgumentDictionary;

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getServiceUrlEndpoint() {
        return serviceUrlEndpoint;
    }

    public void setServiceUrlEndpoint(String serviceUrlEndpoint) {
        this.serviceUrlEndpoint = serviceUrlEndpoint;
    }

    public String getServiceRequestMethod() {
        return serviceRequestMethod;
    }

    public void setServiceRequestMethod(String serviceRequestMethod) {
        this.serviceRequestMethod = serviceRequestMethod;
    }

    public int getServicePort() {
        return servicePort;
    }

    public void setServicePort(int servicePort) {
        this.servicePort = servicePort;
    }

    public Map<String, String> getServiceArgumentDictionary() {
        return serviceArgumentDictionary;
    }

    public void setServiceArgumentDictionary(Map<String, String> serviceArgumentDictionary) {
        this.serviceArgumentDictionary = serviceArgumentDictionary;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ServiceRegistrationRequest)) return false;
        ServiceRegistrationRequest that = (ServiceRegistrationRequest) o;
        return getServicePort() == that.getServicePort() &&
                getServiceUrlEndpoint().equals(that.getServiceUrlEndpoint()) &&
                getServiceRequestMethod().equals(that.getServiceRequestMethod()) &&
                Objects.equals(getServiceArgumentDictionary(), that.getServiceArgumentDictionary());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getServiceUrlEndpoint(), getServiceRequestMethod(), getServicePort(), getServiceArgumentDictionary());
    }

    @Override
    public String toString() {
        return "ServiceRegistrationRequest{" +
                "serviceName='" + serviceName + '\'' +
                ", serviceDescription='" + serviceDescription + '\'' +
                ", serviceUrlEndpoint='" + serviceUrlEndpoint + '\'' +
                ", serviceRequestMethod='" + serviceRequestMethod + '\'' +
                ", servicePort=" + servicePort +
                ", serviceArgumentDictionary=" + serviceArgumentDictionary +
                '}';
    }
}
