package session7;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
//
//	@BeforeClass
//	public static void before() {
//		System.setProperty("karate.env", "QA");
//	}

	@Test
	public void testParallel() {
		Results results = Runner.path("classpath:session7").tags("~@ignore").parallel(10);
	}
}
