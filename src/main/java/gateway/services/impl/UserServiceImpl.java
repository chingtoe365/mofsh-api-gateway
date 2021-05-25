package gateway.services.impl;

import gateway.exceptions.AuthenticationException;
import gateway.model.UserRegistrationRequest;
import gateway.model.User;
import gateway.respositories.UserRepository;
import gateway.services.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.text.MessageFormat;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private final UserRepository users;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        final Optional<User> optionalUser = users.findByUsername(username);

        if(optionalUser.isPresent()){
            return optionalUser.get();
        }
        else {
             throw new UsernameNotFoundException(MessageFormat.format("User with username {0} cannot be found.", username));
        }
    }

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
    public boolean isUserNameRegistered(String username) {
        Optional<User> foundUser = users.findByUsername(username);
        return  foundUser.isPresent() ? true : false;
    }

    @Override
    public User registerUser(UserRegistrationRequest body) throws AuthenticationException {
        if(isUserNameRegistered(body.getUsername())){
            throw new AuthenticationException("User already exists for this username");
        }
        User user = new User();
        user.setUsername(body.getUsername());
        user.setEmail(body.getEmail());
        user.setOrganization(body.getOrganization());
        user.setPassword(passwordEncoder.encode(body.getPassword()));
        User entry = users.save(user);
        if(entry != null){
            return entry;
        } else {
            throw new AuthenticationException("Failed to create and persist new user");
        }
    }


    @Override
    public Optional<User> getByUsername(String username) throws AuthenticationException {
        Optional<User> user = users.findByUsername(username);
        if (user != null){
            return user;
        }
        return null;
    }

    @Override
    public boolean userHasSubscribedService(Integer serviceId, Integer userId) {
        return false;
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
