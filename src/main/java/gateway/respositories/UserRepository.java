package gateway.respositories;

import gateway.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UserRepository extends CrudRepository<User, UUID> {
    @Override
    <S extends User> List<S> saveAll(Iterable<S> entities);

    @Override
    <S extends User> S save(S s);

    @Override
    List<User> findAll();

    User findByUsername(String username);

    List<User> findByEmail(String email);

    @Override
    Optional<User> findById(UUID uuid);
}
