package gateway.model;

import java.util.List;
import java.util.Map;
import java.util.UUID;

public class User {
    public User(){}

    private Integer userId;
    private String username;
    private String organization;

    public String getUsername(){
        return username;
    }

    public String getOrganization(){
        return organization;
    }

    public List<Map<Integer, String>> getSubscribedResourceList(){
        // TODO: implement this
        return null;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }
}
