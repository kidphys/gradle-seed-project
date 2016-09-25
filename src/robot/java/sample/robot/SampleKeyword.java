package sample.robot;

import sample.Sample;

/**
 * Created by chau.hoang on 9/25/16.
 */
public class SampleKeyword {
    private String result = "Undefined";

    public void ping(String input) {
        result = input + " " + new Sample().ping();
    }

    public String getSystemResult() {
        return result;
    }


}
