package session6;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {

	@Test
	public void testParallel() {
		Results results = Runner.path("classpath:session*").tags("~@ignore").parallel(10);
	}
}
