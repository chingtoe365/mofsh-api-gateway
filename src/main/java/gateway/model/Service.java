package gateway.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Map;

@Entity
@Table(name = "mofsh_ai_services")
public class Service {
    @Id
    @Column(name = "id")
    private Integer id;

    public Service(){}

    public Service(Integer id) {
        this.id = id;
    }
}
