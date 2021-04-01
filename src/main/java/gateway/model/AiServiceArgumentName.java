package gateway.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

/**
 * This class represents service argument names
 * @author jintaolong@brookes.ac.uk
 * @created 25/03/2021
 * @updated 25/03/2021
 */
@Entity
@Table(name = "mofsh_arguments")
public class AiServiceArgumentName implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "id")
    @GeneratedValue
    private int argumentId;

    @Column(name = "argument_name")
    private String argumentName;

    @OneToMany(mappedBy = "aiServiceArgumentName")
    private Set<AiServiceArgument> aiServiceArguments;

    public int getArgumentId() {
        return argumentId;
    }

    public void setArgumentId(int argumentId) {
        this.argumentId = argumentId;
    }

    public String getArgumentName() {
        return argumentName;
    }

    public void setArgumentName(String argumentName) {
        this.argumentName = argumentName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AiServiceArgumentName)) return false;
        AiServiceArgumentName that = (AiServiceArgumentName) o;
        return getArgumentId() == that.getArgumentId() &&
                getArgumentName().equals(that.getArgumentName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getArgumentId(), getArgumentName());
    }

    @Override
    public String toString() {
        return "ServiceArgument{" +
                "argumentId=" + argumentId +
                ", argumentName='" + argumentName + '\'' +
                '}';
    }
}
