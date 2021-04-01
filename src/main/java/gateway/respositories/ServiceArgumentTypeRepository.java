package gateway.respositories;

import gateway.model.AiServiceArgumentType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * @author jintaolong@brookes.ac.uk
 * @created 01/04/2021
 * @updated 01/04/2021
 */
@Repository
public interface ServiceArgumentTypeRepository extends CrudRepository<AiServiceArgumentType, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM mofsh_argument_types WHERE argument_type = ?1")
    Optional<AiServiceArgumentType> findByArgumentType(String string);

}
