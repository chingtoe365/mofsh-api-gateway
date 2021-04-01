package gateway.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * This class represents a pair of <service, argument name, argument type>
 * @author jintaolong@brookes.ac.uk
 * @created 25/03/2021
 * @updated 25/03/2021
 */
@Entity
@Table(name = "mofsh_fact_ai_services_arguments")
public class AiServiceArgument implements Serializable {
    private static final long serialVersionUID = 8941561531454L;

    @Id
    @Column(name = "id")
    @GeneratedValue
    private int factId;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "id_argument", nullable = false)
    private AiServiceArgumentName aiServiceArgumentName;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "id_argument_type", nullable = false)
    private AiServiceArgumentType aiServiceArgumentType;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "id_ai_service", nullable = false)
    private AiService aiService;

    public int getFactId() {
        return factId;
    }

    public void setFactId(int factId) {
        this.factId = factId;
    }

    public AiServiceArgumentName getAiServiceArgumentName() {
        return aiServiceArgumentName;
    }

    public void setAiServiceArgumentName(AiServiceArgumentName aiServiceArgumentName) {
        this.aiServiceArgumentName = aiServiceArgumentName;
    }

    public AiServiceArgumentType getAiServiceArgumentType() {
        return aiServiceArgumentType;
    }

    public void setAiServiceArgumentType(AiServiceArgumentType aiServiceArgumentType) {
        this.aiServiceArgumentType = aiServiceArgumentType;
    }

    public AiService getAiService() {
        return aiService;
    }

    public void setAiService(AiService aiService) {
        this.aiService = aiService;
    }

    @Override
    public String toString() {
        return "AiServiceArgument{" +
                "aiServiceArgumentName=" + aiServiceArgumentName +
                ", aiServiceArgumentType=" + aiServiceArgumentType +
                '}';
    }
}
