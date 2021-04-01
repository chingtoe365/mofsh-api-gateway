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
public class ServiceArgument implements Serializable {
    private static final long serialVersionUID = 8941561531454L;

    @Id
    @Column(name = "id")
    private int factId;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_argument", nullable = false)
    private ServiceArgumentName serviceArgumentName;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_argument_type", nullable = false)
    private ServiceArgumentType serviceArgumentType;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_ai_service", nullable = false)
    private Service service;

    public int getFactId() {
        return factId;
    }

    public void setFactId(int factId) {
        this.factId = factId;
    }

}
