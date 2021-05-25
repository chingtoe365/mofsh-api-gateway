package gateway.respositories;

import gateway.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends CrudRepository<User, UUID> {
    @Override
    <S extends User> List<S> saveAll(Iterable<S> entities);

    @Override
    <S extends User> S save(S s);

    @Override
    List<User> findAll();

    Optional<User> findByUsername(String username);

    Optional<User> findByEmail(String email);

    @Override
    Optional<User> findById(UUID uuid);
}
