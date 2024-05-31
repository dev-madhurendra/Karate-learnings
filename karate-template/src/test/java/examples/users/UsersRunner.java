package examples.users;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("features/user-get").relativeTo(getClass());
    }    
}
