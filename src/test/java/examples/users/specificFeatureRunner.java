package examples.users;

import com.intuit.karate.junit5.Karate;

class specificFeatureRunner {
    
    @Karate.Test
    Karate testUsers() {
        return new Karate().feature("Demo").relativeTo(getClass());
    }    

}
