package gateway.model;

import java.util.Objects;

/*
 * This class represents AI service responses
 * @author jintaolong@brookes.ac.uk
 * @created 07-03-2021
 * @updated 07-03-2021
 */
public class AiServiceResponse extends ResponseBase{
    private static final long serialVersionUID = -8117651116584971365L;

    public AiServiceResponse() {
    }

    private Integer httpStatusCode;

    private String response;

    public Integer getHttpStatusCode() {
        return httpStatusCode;
    }

    public void setHttpStatusCode(Integer httpStatusCode) {
        this.httpStatusCode = httpStatusCode;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    @Override
    public String toString() {
        return "AiServiceResponse{" +
                "httpStatusCode=" + httpStatusCode +
                ", response='" + response + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        AiServiceResponse that = (AiServiceResponse) o;
        return httpStatusCode.equals(that.httpStatusCode) && response.equals(that.response);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), httpStatusCode, response);
    }
}
