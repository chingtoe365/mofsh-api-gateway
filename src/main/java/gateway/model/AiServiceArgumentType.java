package gateway.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

/**
 * This class represents service argument types
 * @author jintaolong@brookes.ac.uk
 * @created 25/03/2021
 * @updated 25/03/2021
 */

@Entity
@Table(name = "mofsh_argument_types")
public class AiServiceArgumentType implements Serializable {
    private static final long serialVersionUID = -4864645646545L;

    @Id
    @Column(name = "id")
    private int argumentTypeId;

    @Column(name = "argument_type")
    private String argumentType;

    @OneToMany(mappedBy = "aiServiceArgumentType")
    private Set<AiServiceArgument> aiServiceArguments;

    public int getArgumentTypeId() {
        return argumentTypeId;
    }

    public void setArgumentTypeId(int argumentTypeId) {
        this.argumentTypeId = argumentTypeId;
    }

    public String getArgumentType() {
        return argumentType;
    }

    public void setArgumentType(String argumentType) {
        this.argumentType = argumentType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AiServiceArgumentType)) return false;
        AiServiceArgumentType that = (AiServiceArgumentType) o;
        return getArgumentTypeId() == that.getArgumentTypeId() &&
                getArgumentType().equals(that.getArgumentType());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getArgumentTypeId(), getArgumentType());
    }

    @Override
    public String toString() {
        return "ServiceArgumentType{" +
                "argumentTypeId=" + argumentTypeId +
                ", argumentType='" + argumentType + '\'' +
                '}';
    }
}
