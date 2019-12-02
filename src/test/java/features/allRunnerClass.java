package features;

import com.intuit.karate.junit5.Karate;

class allRunnerClass {
    
    // this will run all *.feature files that exist in sub-directories
    @Karate.Test
    Karate testAll()
    {
        return new Karate().relativeTo(getClass());
    }
    
}
