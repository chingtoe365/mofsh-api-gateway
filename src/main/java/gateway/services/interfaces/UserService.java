package gateway.services.interfaces;

import gateway.exceptions.AuthenticationException;
import gateway.model.RegistrationRequest;
import gateway.model.User;

public interface UserService {
    public boolean isEmailRegistered(String email);
    public User createNewUser(RegistrationRequest body, String key) throws AuthenticationException;
    public User getByUsername(String username) throws AuthenticationException;
    public User getById(String id) throws AuthenticationException;
    public User updateUser(User user);
    public boolean userHasSubscribedService(Integer serviceId, Integer userId);
}
