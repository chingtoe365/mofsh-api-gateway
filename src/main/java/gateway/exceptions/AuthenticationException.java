package gateway.exceptions;

/*
 * Generic base class for all exceptions related to authentication
 * @author: jintaolong@brookes.ac.uk
 * @created: 2021-03-26
 * @updated: 2021-03-26
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
