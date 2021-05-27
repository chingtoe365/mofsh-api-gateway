package gateway.controllers;

import junit.framework.TestCase;
import org.junit.Test;

//public class UserControllerTest extends TestCase {
//        UserController controller = new UserController();  //given
//        String response = controller.set_username(name:"joesmith");  //when
//        assertEquals(expected: "joesmith", response);   //then
//}

@Test
public class UserControllerTest extends TestCase {
        UserController controller = new UserController();  //given
        String response = controller.set_username(name:"joesmith");  //when
        assertEquals(expected: "joesmith", response);   //then
}