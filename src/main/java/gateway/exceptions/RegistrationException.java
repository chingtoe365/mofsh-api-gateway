package gateway.exceptions;

/**
 * General base class for all exceptions registration
 * @author jintaolong@brookes.ac.uk
 * @created 01/04/2021
 * @updated 01/04/2021
 */
public class RegistrationException extends Exception {
    private static final long serialVersionUID = -3795314616799563076L;

    public RegistrationException() {
        super();
    }

    public RegistrationException(String msg, Throwable ex, boolean stacktrace, boolean supression) {
        super(msg, ex, stacktrace, supression);
    }

    public RegistrationException(String msg, Throwable ex) {
        super(msg, ex);
    }

    public RegistrationException(String msg) {
        super(msg);
    }

    public RegistrationException(Throwable ex) {
        super(ex);
    }
}
