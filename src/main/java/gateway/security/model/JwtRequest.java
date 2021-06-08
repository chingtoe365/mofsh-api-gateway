package gateway.security.model;

import java.io.Serializable;

/**
 * This class is required for storing the username and password
 * recieved from the client.
 *
 * @author
 * @created 02/06/2021
 * @updated 02/06/2021
 */
public class JwtRequest implements Serializable {
    private static final long serialVersionUID = 394823482;

    private String username;
    private String password;

    public JwtRequest() {
    }

    public JwtRequest(String username, String password){
        this.setUsername(username);
        this.setPassword(password);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
