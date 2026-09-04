package com.devops;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class AppTest {
    @Test
    public void testMessage() {
        App app = new App();
        String expected = "DevOps Class is Awesome!";
        String actual = app.getMessage();
        assertEquals(expected, actual); // Test phase pass hoga
    }
}
