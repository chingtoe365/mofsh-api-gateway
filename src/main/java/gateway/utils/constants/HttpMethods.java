package gateway.utils.constants;

import org.springframework.http.HttpMethod;

/**
 * List of HTTP methods and retrieve it
 * @author jintaolong@brookes.ac.uk
 * @created 28/04/2021
 * @updated 28/04/2021
 */
public class HttpMethods {
    private String text;
    public HttpMethods() {
    }

    public static HttpMethod fromString(String text){
        HttpMethod m;
        switch (text){
            case "POST":
                m = HttpMethod.POST;
                break;
            case "PUT":
                m = HttpMethod.PUT;
                break;
            case "DELETE":
                m = HttpMethod.DELETE;
                break;
            default:
                m = HttpMethod.GET;
        }
        return m;
    }


}
