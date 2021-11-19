package aula_karate.rickandmorty;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class RickAndMortyTestRunner {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:aula_karate")
                .tags("~@ignore")
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
