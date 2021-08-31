import com.google.gson.Gson;

public class MavenDemoApp {
    public static void main(String[] args) {

        Computer computer = new Computer("EVGA", "RapterXPro", true);

        String computerJson = new Gson().toJson(computer);

        System.out.println(computerJson);

    }
}
