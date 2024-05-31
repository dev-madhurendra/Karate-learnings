package examples.graphql;

import com.intuit.karate.junit5.Karate;

public class GraphqlRunner {
    @Karate.Test
    Karate testGraphqlAPI() {
        return Karate.run("features/character-get").relativeTo(getClass());
    }
}
