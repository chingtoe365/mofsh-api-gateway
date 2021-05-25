package gateway.respositories;

import gateway.model.AiServiceArgumentName;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * This is a repository class for ServiceArgumentName
 * @author jintaolong@brookes.ac.uk
 * @created 01/04/2021
 * @updated 01/04/2021
 */
@Repository
public interface ServiceArgumentNameRepository extends CrudRepository<AiServiceArgumentName, Integer> {
    @Query(nativeQuery = true, value = "SELECT * FROM mofsh_arguments WHERE argument_name = ?1")
    Optional<AiServiceArgumentName> findByArgumentName(String string);

    @Override
    <S extends AiServiceArgumentName> S save(S s);

}
