package gateway.respositories;

import gateway.model.Service;
import org.springframework.data.repository.CrudRepository;

public interface AiServiceRepository extends CrudRepository<Integer, Service> {
    
}
