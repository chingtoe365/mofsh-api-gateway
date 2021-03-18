package gateway.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Map;

@Entity
@Table(name = "mofsh_data_cubes")
public class Resource {

    @Id
    @Column(name = "id")
    private int resourceId;

    public Resource(int resourceId) {
        this.resourceId = resourceId;
    }
}
