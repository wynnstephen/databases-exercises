public class CarUtils {

    public static String getCarDetails(Car car){

        String make = car.getMake();
        String model = car.getModel();
        String year = car.getYear();
        String color = car.getColor();
        double mileage = car.getMileage();
        boolean isElectric = car.isElectric();

        if (make == null || model == null || year == null || color == null) {
            return "Not able to provide details";
        }

        return year + " " + make + " " + model;


    }

}
