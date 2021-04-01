package gateway.services.interfaces;

import gateway.exceptions.AuthenticationException;
import gateway.model.UserRegistrationRequest;
import gateway.model.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Optional;

public interface UserService extends UserDetailsService {
    public boolean isEmailRegistered(String email);
    public boolean isUserNameRegistered(String username);
    public User registerUser(UserRegistrationRequest body) throws AuthenticationException;
    public Optional<User> getByUsername(String username) throws AuthenticationException;
    public User getById(String id) throws AuthenticationException;
    public User updateUser(User user);
    public boolean userHasSubscribedService(Integer serviceId, Integer userId);
}
