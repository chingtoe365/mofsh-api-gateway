package gateway.builders.interfaces;

import gateway.model.AiServiceInput;

import java.io.IOException;
import java.net.HttpURLConnection;

/**
 * This class represents interface of request builder
 * @author jintaolong@brookes.ac.uk
 * @created 08/04/2021
 * @updated 08/04/2021
 */
public interface RequestBuiler {
    public HttpURLConnection build(AiServiceInput aiServiceInput) throws IOException;
}
