package gateway;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@EnableAutoConfiguration
@SpringBootApplication
@RestController
@EnableSwagger2
@ComponentScan(basePackages = "gateway")
public class Application {

	public static void main( String[] args ) {
		SpringApplication.run(Application.class, args);
	}

}