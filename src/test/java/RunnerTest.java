import com.intuit.karate.junit5.Karate;

public class RunnerTest {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:demoblaze/pruebasApiDemoBlaze/pruebasApiDemoBlaze.feature");
    }

}