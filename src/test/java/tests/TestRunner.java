package tests;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
public class TestRunner {
	
	@BeforeClass
	public static void method() {
		System.setProperty("karate.env", "dev");
	}
}
