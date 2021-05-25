package gateway.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * A controller for testing
 * @author jintaolong@brookes.ac.uk
 * @created 18/03/2021
 * @updated 18/03/2021
 */

@RestController
@RequestMapping("/test")
public class TestController extends Controller {

    @RequestMapping(value = "/helloworld", method = RequestMethod.GET)
    public ResponseEntity<String> test(){
        ResponseEntity<String> response = new ResponseEntity<String>("hello world", HttpStatus.OK);
        return response;
    }
}
