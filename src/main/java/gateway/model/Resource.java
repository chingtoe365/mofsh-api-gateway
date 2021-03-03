package gateway.model;

import java.util.Map;

public class Resource {
    public Resource(){}

    private int resourceId;
    private String resourceProvider;
    private Map<String, String> resourceArguments;

    public int getResourceId() {
        return resourceId;
    }

    @Override
    public String toString(){
        return "{id=" + resourceId
                + ",provider=" + resourceProvider
                + ", arguments=" + resourceArguments.toString();
    }

}
