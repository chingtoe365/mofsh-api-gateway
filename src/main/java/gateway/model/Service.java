package gateway.model;

import java.util.Map;

public class Service {
    public Service(){};

    private String servcieName;
    private String serviceDescription;
    private Map<String, String> serviceArguments;

    public String getServcieName() {
        return servcieName;
    }

    public String getServiceDescription(){
        return serviceDescription;
    }

    @Override
    public String toString(){
        return "{serviceName=" + servcieName
                + ",serviceDescription=" + serviceDescription
                + ", serviceArguments=" + serviceArguments.toString();
    }
}
