package utilsTest;

import static org.junit.Assert.assertTrue;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import service.Application;
import utils.Database;

public class DatabaseTest {

    @BeforeClass
    public void setup() {
        assertTrue(Database.openConnection());
    }

    @AfterClass
    public void teardown() {
        assertTrue(Database.closeConnection());
    }

    @Test
    public void databaseIsUp() {
        assertTrue(Database.executeQuery("select 1 + 1 from dual").contains("2"));
    }

}
