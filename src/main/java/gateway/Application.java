package gateway;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// tag::code[]
@EnableAutoConfiguration
@SpringBootApplication
//@EnableConfigurationProperties(UriConfiguration.class)
//@EnableSwagger2
@RestController
//@RequestMapping("/api/v1")
@ComponentScan(basePackages = "gateway")
public class Application {

	public static void main( String[] args ) {
		SpringApplication.run(Application.class, args);
	}

	/**
	 * A customized RestTemplate that has the ribbon load balancer build in.
	 * Note that prior to the "Brixton"
	 *
	 * @return
	 */
//	@GetMapping("/test")
//	public String test(){
//		return "Hello world";
//	}

	@Autowired
	ObjectMapper mapper;

	@GetMapping("/resource/{resourceId}")
	public ResponseEntity<String> getResourceMetaById(@PathVariable("resourceId") String resourceId){
		String str = "";
		ResponseEntity<String> response = null;
//		mapper.writeValueAsString()
		response = new ResponseEntity<String>("{'resouce_provider': 'box', 'client_id': 'n8vws2kz5oiq781xrll3iuw6qgesbxtn', 'client_secret': 'eypNtDShRbYPq2XDEztq5WlfWMA9gjX0', 'access_token': 'YSjSi6MaBhv1tBaZNjvcUqCffIMKTPpE', }", HttpStatus.OK);
		return response;
	}
}