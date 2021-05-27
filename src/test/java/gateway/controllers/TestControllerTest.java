package gateway.controllers;

import junit.framework.TestCase;

public class TestControllerTest extends TestCase {
    TestController controller = new TestController();  //given
    String response = controller.ResponseEntity();  //when
    assertNotNull(response);   //then
}