package gateway.exceptions;

/**
 * This handles data types not matching exceptions
 * @author jintaolong@brookes.ac.uk
 * @created 29/04/2021
 * @updated 29/04/2021
 */
public class TypeNotMatchException extends Exception{
    private static final long serialVersionUID = -14453513156161L;

    public TypeNotMatchException() {
        super();
    }

    public TypeNotMatchException(String msg, Throwable ex, boolean stacktrace, boolean supression) {
        super(msg, ex, stacktrace, supression);
    }

    public TypeNotMatchException(String msg, Throwable ex) {
        super(msg, ex);
    }

    public TypeNotMatchException(String msg) {
        super(msg);
    }

    public TypeNotMatchException(Throwable ex) {
        super(ex);
    }
}
