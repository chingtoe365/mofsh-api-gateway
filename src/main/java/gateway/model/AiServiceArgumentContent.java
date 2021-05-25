package gateway.model;

import java.io.Serializable;
import java.util.Objects;

/**
 *
 * @author jintaolong@brookes.ac.uk
 * @created 07/04/2021
 * @updated 07/04/2021
 */
public class AiServiceArgumentContent implements Serializable {
    private static final long serialVersionUID = -489145656454564L;

    private Object content;

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "AiServiceArgumentContent{" +
                "content=" + content +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AiServiceArgumentContent that = (AiServiceArgumentContent) o;
        return content.equals(that.content);
    }

    @Override
    public int hashCode() {
        return Objects.hash(content);
    }
}
