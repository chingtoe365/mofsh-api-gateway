package gateway.respositories;

import gateway.model.AiService;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/*
 * This is a repository class for Service
 * @author: jintaolong@brookes.ac.uk
 * @created: 2021-03-24
 * @updated: 2021-03-24
 */
@Repository
public interface ServiceRepository extends CrudRepository<AiService, Integer> {
    @Override
    Iterable<AiService> findAll();

    @Override
    Optional<AiService> findById(Integer integer);

    @Override
    <S extends AiService> S save(S s);

    @Override
    void deleteById(Integer integer);
}
