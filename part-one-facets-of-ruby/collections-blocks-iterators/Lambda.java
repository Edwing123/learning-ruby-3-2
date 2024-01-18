
public class Lambda {

    public static void main(String... args) {
        // Variable scoped to method `main`.
        var level = "DEBUG";

        log(() -> {
            // Try to shadow LEVEL.
            // String level = "INFO";
            System.err.println("The level is %s.".formatted(level));
        });

        if (true) {
            // Try to shadow.
            // String level = "Hi";
        }

        System.err.println("%s".formatted(level));

    }

    static void log(Logger logger) {
        logger.log();
    }
}

interface Logger {

    public void log();

}
