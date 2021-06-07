package gateway.security;

import gateway.model.User;
import gateway.respositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

/**
 * Getting user details from db for Spring Security Auth Manager
 * @author
 * @created 02/06/2021
 * @updated 02/06/2021
 */
@Service
public class JwtUserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {
        @Autowired
        private UserRepository userRepository;

        @Autowired
        private PasswordEncoder bcryptEncoder;

        @Override
        public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//            if ("user".equals(username)) {
////                return new User("javainuse", "$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6",
////                        new ArrayList<>());
//                return new org.springframework.security.core.userdetails.User("user", "password", new ArrayList<>());
//            } else {
//                throw new UsernameNotFoundException("User not found with username: " + username);
//            }
            Optional<User> user = userRepository.findByUsername(username);
            if (!user.isPresent()) {
                throw new UsernameNotFoundException("User not found with username: " + username);
            }
            return new org.springframework.security.core.userdetails
                    .User(user.get().getUsername(), user.get().getPassword(),
                        new ArrayList<>());
        }

//        public User save(UserDTO user) {
//            User newUser = new User();
//            newUser.setUsername(user.getUsername());
//            newUser.setPassword(bcryptEncoder.encode(user.getPassword()));
//            return userRepository.save(newUser);
//        }
}
