package examples.files;

import com.intuit.karate.junit5.Karate;
public class FilesRunner {
    
    @Karate.Test
    Karate testFiles() {
        return Karate.run("features/files-upload").relativeTo(getClass());
    }

    
}
