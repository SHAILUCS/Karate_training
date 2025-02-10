package fake_store_api_gen_ai;

import com.intuit.karate.junit5.Karate;

class SampleTest {
	 @Karate.Test
	    Karate testAll() {
	        return Karate.run("classpath:fake_store_api/auth.feature", "classpath:fake_store_api/products.feature", "classpath:fake_store_api/carts.feature", "classpath:fake_store_api/users.feature");
	    }
}