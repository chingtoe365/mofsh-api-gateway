package gateway.respositories;

import gateway.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Integer> {
    @Override
    <S extends User> List<S> saveAll(Iterable<S> entities);

    @Override
    <S extends User> S save(S s);

    @Override
    List<User> findAll();

    User findByUsername(String username);

    List<User> findByEmail(String email);


}
