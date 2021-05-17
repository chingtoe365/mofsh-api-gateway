package gateway.builders.impl;

import com.fasterxml.jackson.databind.util.JSONPObject;
import gateway.builders.interfaces.RequestBuilder;
import gateway.exceptions.NotFoundException;
import gateway.model.AiService;
import gateway.model.AiServiceArgument;
import gateway.model.AiServiceArgumentType;
import gateway.model.AiServiceInput;
import gateway.parsers.AiContentTypes;
import gateway.services.interfaces.ConnectionService;
import gateway.utils.constants.HttpMethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClient.UriSpec;
import org.springframework.web.reactive.function.client.WebClient.RequestBodySpec;
import org.springframework.web.reactive.function.client.WebClient.RequestHeadersSpec;
import org.springframework.web.reactive.function.client.WebClient.ResponseSpec;
import reactor.core.publisher.Mono;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.time.ZonedDateTime;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

/**
 * This class represents a AI service request builder
 * @author jintaolong@brookes.ac.uk
 * @created 10/04/2021
 * @updated 10/04/2021
 */
@Service
public class RequestBuilderImpl implements RequestBuilder {

    @Autowired
    ConnectionService connectionService;

    @Override
    public RequestHeadersSpec build(AiServiceInput aiServiceInput) throws IOException, ClassNotFoundException {
        RequestHeadersSpec<?> headersSpec;
        int serivceId = aiServiceInput.getServiceId();
        Map<String, Object> inputArguments = aiServiceInput.getArguments();
        Optional<AiService> aiService = connectionService.findServiceById(serivceId);
        if (aiService.isPresent()) {
            String url = aiService.get().getEndpoint();
            String method = aiService.get().getMethod();
            Set<AiServiceArgument> expectedArguments = aiService.get().getAiServiceArguments();
            // TODO: set timeout
            WebClient client = WebClient.create(url);
            String argmentStr = "{";
            for(AiServiceArgument argument : expectedArguments) {
                AiServiceArgumentType expectedArgumentType = argument.getAiServiceArgumentType();
                String argumentKey = argument.getAiServiceArgumentName().getArgumentName();
                String argumentContent = AiContentTypes.cast(argument
                                .getAiServiceArgumentType()
                                .getArgumentType(),
                        inputArguments
                                .get(argumentKey)
                ).toString();
                argmentStr += "\""+argumentKey+"\":\""+argumentContent+"\"";
            }
            argmentStr += "}";
            headersSpec = client
                    .method(HttpMethods.fromString(method))
                    .body(BodyInserters.fromPublisher(Mono.just(argmentStr), String.class))
                    .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                    .accept(MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML);

        } else {
            throw new NotFoundException("AI Service not found");
        }
        return headersSpec;
    }
}
