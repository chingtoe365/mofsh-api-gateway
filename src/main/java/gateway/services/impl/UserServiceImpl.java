package gateway.services.impl;

import gateway.exceptions.AuthenticationException;
import gateway.model.RegistrationRequest;
import gateway.model.User;
import gateway.respositories.UserRepository;
import gateway.services.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private UserRepository users;

    @Autowired
    public UserServiceImpl(UserRepository users) {
        super();
        this.users = users;
    }

    @Override
    public boolean isEmailRegistered(String email) {
        return users.findByEmail(email) != null;
    }

    @Override
    public User createNewUser(RegistrationRequest body, String key) throws AuthenticationException {
        User user = new User();
        user.setUsername(body.getUsername());
        user.setOrganization(body.getOrganization());
        User entry = users.save(user);
        if(entry != null){
            return entry;
        } else {
            throw new AuthenticationException("Failed to create and persist new user");
        }
    }

    @Override
    public User getByUsername(String username) throws AuthenticationException {
        User user = users.findByUsername(username);
        if (user != null){
            return user;
        }
        return null;
    }

    @Override
    public User getById(String id) throws AuthenticationException {
        return null;
    }

    @Override
    public User updateUser(User user) {
        return null;
    }
}
