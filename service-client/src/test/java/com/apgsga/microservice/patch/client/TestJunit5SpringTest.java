package com.apgsga.microservice.patch.client;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import com.apgsga.microservice.test.TestServer;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT, classes = {TestServer.class})
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@Tag("IntegrationTest")
@DisplayName("Delete in Relationships Integration Tests")
public class TestJunit5SpringTest {

 
   
    @Test
    public void testSaveEmptyWithId() {
       
    }

   
}
