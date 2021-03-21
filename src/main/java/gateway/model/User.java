package gateway.model;

import javax.naming.Name;
import javax.persistence.*;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "mofsh_users",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = "username"),
        @UniqueConstraint(columnNames = "email")
    })
public class User {
    @Id
    @Column(name = "uuid")
    private UUID userId;

    @Column(name = "username")
    private String username;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "organization")
    private String organization;

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(){
        this(UUID.randomUUID());
    }

    public User(UUID id) {
        this(id, "", "", "");
    }

    public User(UUID id, String username, String email, String organization){
        this.userId = id;
        this.username = username;
        this.email = email;
        this.organization = organization;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", organization='" + organization + '\'' +
                '}';
    }


}
