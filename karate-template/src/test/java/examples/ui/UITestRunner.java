package examples.ui;

import com.intuit.karate.junit5.Karate;

public class UITestRunner {
    @Karate.Test
    Karate testUI() {
        return Karate.run("features/youtube.feature").relativeTo(getClass());
    }
}
