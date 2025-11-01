public class LogLevels {
    static String LOG_SPLITTER_REGEX = "[\\:]";
    static String REMOVE_BRACKETS = "[\\[\\]]";
    
    public static String message(String logLine) {
        return logLine.split(LOG_SPLITTER_REGEX)[1].trim();
    }

    public static String logLevel(String logLine) {
        String levelDirty = logLine.trim().split(LOG_SPLITTER_REGEX)[0];
        String level = levelDirty.replaceAll("[\\[\\]\\:]", "").toLowerCase().trim();

        return level;
    }

    public static String reformat(String logLine) {
        return message(logLine) + " " + "(" + logLevel(logLine) + ")";
    }
}
