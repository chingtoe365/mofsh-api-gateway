package gateway.controllers;

import gateway.exceptions.AuthenticationException;
import gateway.model.UserRegistrationRequest;
import gateway.model.User;
import gateway.services.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/*
 * This class represents the User Controller. This conroller allows us to retrieve users.
 * @author: jintaolong@brookes.ac.uk
 * @created: 2021-03-22
 * @updated: 2021-03-22
 */
@RestController
@RequestMapping("/users")
public class UserController extends Controller{
    @Autowired
    private UserServiceImpl userService;
// define username first
    public UserController(){
//        public String set_username(String username){  // set username
//            return String.format(username);
//        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ResponseEntity<String> userRegistration(@RequestBody(required=true) UserRegistrationRequest userRegistrationRequest) throws AuthenticationException {
        ResponseEntity<String> response = null;
        HttpStatus status = HttpStatus.INTERNAL_SERVER_ERROR;
        User entry = userService.registerUser(userRegistrationRequest);
        if (entry != null){
            status = HttpStatus.OK;
        }
        response = new ResponseEntity<String>(status);
        return response;
    }

    @RequestMapping(value = "/getOrganization/{UserId}", method = RequestMethod.GET)
    public ResponseEntity<String> getUserOrganization(String username, String password){
        return null;
    }
}
