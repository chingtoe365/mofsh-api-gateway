package gateway.parsers;

import gateway.exceptions.TypeNotMatchException;
import org.springframework.http.HttpMethod;

/**
 * This class represents all possible content types of AI input
 * TODO: error handlers
 * @author jintaolong@brookes.ac.uk
 * @created 29/04/2021
 * @updated 29/04/2021
 */
public class AiContentTypes {
    private static Class<?> type;

    public static Object cast(String refType, Object content) throws ClassNotFoundException {
        switch (refType){
            case "text":
                type = String.class;
                break;
            case "number":
                type = Number   .class;
                break;
        }
        if(type.isInstance(content)){
            return type.cast(content);
        }else{
            throw new ClassNotFoundException();
        }
    }

}
