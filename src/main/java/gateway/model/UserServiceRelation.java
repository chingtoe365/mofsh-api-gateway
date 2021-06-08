package gateway.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * This class represents user service relation
 * @author jintaolong@brookes.ac.uk
 * @created 08/06/2021
 * @updated 08/06/2021
 */

@Entity
@Table(name = "mofsh_services_users_relation")
public class UserServiceRelation implements Serializable {
    private final static long serialVersionUID = -4984894;
    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "relation")
    private String relation;

    @OneToMany(mappedBy = "userServiceRelation")
    private Set<UserServiceRelationMap> userServiceRelationMaps;

    public Set<UserServiceRelationMap> getUserServiceRelationMaps() {
        return userServiceRelationMaps;
    }

    public void setUserServiceRelationMaps(Set<UserServiceRelationMap> userServiceRelationMaps) {
        this.userServiceRelationMaps = userServiceRelationMaps;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }
}
