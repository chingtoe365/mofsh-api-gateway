package gateway.exceptions;

import org.springframework.data.rest.webmvc.ResourceNotFoundException;

/**
 * This exception encapsulates a ResourceNotFoundException
 * @author jintaolong@brookes.ac.uk
 * @created 26/03/2021
 * @updated 26/03/2021
 */
public class NotFoundException extends ResourceNotFoundException {

    private static final long serialVersionUID = 1181456156165165L;

    public NotFoundException() {
        super();
    }

    public NotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public NotFoundException(String message) {
        super(message);
    }

}
