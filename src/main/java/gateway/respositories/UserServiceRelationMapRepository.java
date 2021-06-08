package gateway.respositories;

import gateway.model.AiServiceArgumentType;
import gateway.model.UserServiceRelationMap;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * @author jintaolong@brookes.ac.uk
 * @created 08/06/2021
 * @updated 08/06/2021
 */
@Repository
public interface UserServiceRelationMapRepository extends CrudRepository<UserServiceRelationMap, Integer> {
    @Override
    <S extends UserServiceRelationMap> S save(S s);

    @Override
    Optional<UserServiceRelationMap> findById(Integer integer);

    @Query(nativeQuery = true, value = "SELECT id_service FROM mofsh_fact_services_users WHERE uuid_user = ?1")
    Optional<List<Integer>> findServicesByUserId(UUID uuid);

}
