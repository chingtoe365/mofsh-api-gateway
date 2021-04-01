package gateway.respositories;

import gateway.model.Service;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AiServiceRepository extends CrudRepository<Service, Integer> {
    @Override
    Iterable<Service> findAll();

    @Override
    Optional<Service> findById(Integer integer);
}
