package gateway.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/*
 * This class represents an entire AI service with full information
 * @author: jintaolong@brookes.ac.uk
 * @created: 2021-03-22
 * @updated: 2021-03-22
 */
@Entity
@Table(name = "mofsh_ai_services")
public class AiService implements Serializable {
    private static final long serialVersionId = -54646564L;
    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "ai_service_name")
    private String aiServiceName;

    @Column(name = "ai_service_description")
    private String aiServiceDescription;

    @Column(name = "endpoint")
    private String endpoint;

    @Column(name = "request_method")
    private String method;

    @Column(name = "port")
    private int port;

    @OneToMany(mappedBy = "aiService")
    private Set<AiServiceArgument> aiServiceArguments;

    @OneToMany(mappedBy = "aiService")
    private Set<UserServiceRelationMap> userServiceRelationMaps;

    public Set<AiServiceArgument> getAiServiceArguments() {
        return aiServiceArguments;
    }

    public void setAiServiceArguments(Set<AiServiceArgument> aiServiceArguments) {
        this.aiServiceArguments = aiServiceArguments;
    }

    public AiService(){}

    public AiService(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAiServiceName() {
        return aiServiceName;
    }

    public void setAiServiceName(String aiServiceName) {
        this.aiServiceName = aiServiceName;
    }

    public String getAiServiceDescription() {
        return aiServiceDescription;
    }

    public void setAiServiceDescription(String aiServiceDescription) {
        this.aiServiceDescription = aiServiceDescription;
    }

    public String getEndpoint() {
        return endpoint;
    }

    public void setEndpoint(String endpoint) {
        this.endpoint = endpoint;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public Set<UserServiceRelationMap> getUserServiceRelationMaps() {
        return userServiceRelationMaps;
    }

    public void setUserServiceRelationMaps(Set<UserServiceRelationMap> userServiceRelationMaps) {
        this.userServiceRelationMaps = userServiceRelationMaps;
    }

    @Override
    public String toString() {
        return "Service{" +
                "aiServiceName='" + aiServiceName + '\'' +
                ", aiServiceDescription='" + aiServiceDescription + '\'' +
                ", endpoint='" + endpoint + '\'' +
                ", method='" + method + '\'' +
                ", port=" + port +
                ", serviceArguments=" + aiServiceArguments +
                '}';
    }
}
