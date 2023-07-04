package session6;

import org.junit.BeforeClass;
import org.junit.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class TestRunner {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "QA");
	}

	@Test
	public void testParallel() {
		Results results = Runner.path("classpath:session*").tags("~@ignore").parallel(10);
	}
}
