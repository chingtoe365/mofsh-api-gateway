package gateway.utils.constants;

import gateway.exceptions.TypeNotMatchException;
import org.springframework.http.HttpMethod;

/**
 * This class represents all possible content types of AI input
 * @author jintaolong@brookes.ac.uk
 * @created 29/04/2021
 * @updated 29/04/2021
 */
public class AiContentTypes {
    private static Class<?> type;

    public static Object cast(String refType, Object content) throws TypeNotMatchException {
        switch (refType){
            case "text":
                type = String.class;
                return type.cast(content);
            case "number":
                type = Number.class;
                return type.cast(content);
            default:
                throw new TypeNotMatchException("Type not found");
        }
    }

}
