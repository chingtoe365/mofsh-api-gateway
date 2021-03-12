package gateway.exceptions;

/**
 * Generic base class for all exceptions related to authentication
 */
public class AuthenticationException extends Exception{
    private static final long serialVersionUID = -3795314616799563076L;

    public AuthenticationException() {
        super();
    }

    public AuthenticationException(String msg, Throwable ex, boolean stacktrace, boolean supression) {
        super(msg, ex, stacktrace, supression);
    }

    public AuthenticationException(String msg, Throwable ex) {
        super(msg, ex);
    }

    public AuthenticationException(String msg) {
        super(msg);
    }

    public AuthenticationException(Throwable ex) {
        super(ex);
    }

}
