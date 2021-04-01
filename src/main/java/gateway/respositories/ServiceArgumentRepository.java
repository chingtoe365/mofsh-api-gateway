package gateway.respositories;

import gateway.model.AiServiceArgument;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * This is a repository class for ServiceArgument
 * @author jintaolong@brookes.ac.uk
 * @created 25/03/2021
 * @updated 25/03/2021
 */
public interface ServiceArgumentRepository extends CrudRepository<AiServiceArgument, Integer> {
    @Override
    <S extends AiServiceArgument> S save(S s);

    @Override
    Optional<AiServiceArgument> findById(Integer integer);


}
