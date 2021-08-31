import org.junit.Assert;
import org.junit.Test;

public class CarDetailsTests {


    @Test
    public void getCarDetails_GivenValidCar_ReturnsExpectedString(){
        //Arrange
        Car car = new Car();
        car.setMake("Ford");
        car.setModel("Mustang");
        car.setYear("2019");

        //Act
        String details = CarUtils.getCarDetails(car);

        //Assert
        Assert.assertEquals("2019 Ford Mustang", details);
    }
    @Test
    public void getCarDetails_GivenOneNullValues_ReturnsErrorString(){
        //Arrange
        Car car = new Car();
        car.setMake("Ford");
        car.setModel("Mustang");
        //we did not set the year

        //Act
        String details = CarUtils.getCarDetails(car);

        //Assert
        Assert.assertEquals("Not able to provide details", details);
    }

    public static void convertToElectric(Car car, String engineType) {
        if (engineType.contains("electric")){
            car.setElectric(true);
        }
    }
}
