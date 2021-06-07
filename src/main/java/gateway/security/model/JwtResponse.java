package gateway.security.model;

import java.io.Serializable;

/**
 * This class represents a response containing JWT returned to user
 * @author
 * @created 02/06/2021
 * @updated 02/06/2021
 */
public class JwtResponse implements Serializable {
    private static final long serialVersionUID = 39402383;
    private final String jwttoken;

    public JwtResponse(String jwttoken) {
        this.jwttoken = jwttoken;
    }

    public String getJwttoken() {
        return jwttoken;
    }
}
