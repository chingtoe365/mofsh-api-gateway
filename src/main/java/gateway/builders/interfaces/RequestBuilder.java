package gateway.builders.interfaces;

import gateway.model.AiServiceInput;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClient.RequestHeadersSpec;
import org.springframework.web.reactive.function.client.WebClient.ResponseSpec;

import java.io.IOException;
import java.net.HttpURLConnection;

/**
 * This class represents interface of request builder
 * @author jintaolong@brookes.ac.uk
 * @created 08/04/2021
 * @updated 08/04/2021
 */
public interface RequestBuilder {
    public RequestHeadersSpec build(AiServiceInput aiServiceInput) throws IOException, ClassNotFoundException;
}
