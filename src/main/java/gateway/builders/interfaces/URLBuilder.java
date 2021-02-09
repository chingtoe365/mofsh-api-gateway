package gateway.builders.interfaces;

import gateway.utils.enums.Actions;
import org.springframework.http.HttpMethod;

import java.util.List;

public interface URLBuilder {
    public String build(Actions action, List<Object> params);

    public HttpMethod getMethod(Actions action);
}
