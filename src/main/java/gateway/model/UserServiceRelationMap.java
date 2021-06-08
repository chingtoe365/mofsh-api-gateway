package gateway.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;
import java.util.UUID;

/**
 * This class represents the facts of user service relation
 * @author jintaolong@brookes.ac.uk
 * @created 08/06/2021
 * @updated 08/06/2021
 */
@Entity
@Table(name = "mofsh_fact_services_users")
public class UserServiceRelationMap implements Serializable {
    private static final long serialVersionUID = -49814156;

    @Id
    @Column(name = "id")
    private int id;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "uuid_user", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "id_service", nullable = false)
    private AiService aiService;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "id_service_user_relation", nullable = false)
    private UserServiceRelation userServiceRelation;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public AiService getAiService() {
        return aiService;
    }

    public void setAiService(AiService aiService) {
        this.aiService = aiService;
    }

    public UserServiceRelation getUserServiceRelation() {
        return userServiceRelation;
    }

    public void setUserServiceRelation(UserServiceRelation userServiceRelation) {
        this.userServiceRelation = userServiceRelation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserServiceRelationMap that = (UserServiceRelationMap) o;
        return user.equals(that.user) && aiService.equals(that.aiService) && userServiceRelation.equals(that.userServiceRelation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user, aiService, userServiceRelation);
    }

    @Override
    public String toString() {
        return "UserServiceRelationMap{" +
                "user=" + user +
                ", aiService=" + aiService +
                ", userServiceRelation=" + userServiceRelation +
                '}';
    }
}
