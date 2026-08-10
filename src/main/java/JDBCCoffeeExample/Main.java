package JDBCCoffeeExample;

import JDBCCoffeeExample.model.Coffee;
import jakarta.enterprise.inject.se.SeContainer;
import jakarta.enterprise.inject.se.SeContainerInitializer;


public class Main {

	public static void main(String[] args) {
        SeContainerInitializer initializer = SeContainerInitializer.newInstance();
        final SeContainer container = initializer.initialize();

        BasicCoffeeDAO coffeeDAO = container.select(BasicCoffeeDAO.class).get();

        System.out.println("List of coffees: " + coffeeDAO.getAll());

        System.out.println("List coffee with id=1: " + coffeeDAO.get(1));

        System.out.println("List of Colombian coffees:" + coffeeDAO.getAllByName("Colombian"));

        System.out.println("Update sales of id=1 coffee:");

        coffeeDAO.update(new Coffee(1, 679));

        System.out.println("Coffee updated: " + coffeeDAO.get(1));

        int newId=coffeeDAO.save(new Coffee(0, "Sudafrica250", 101, 200, 10, 470));

        System.out.println("Coffee added with index: " + newId);

        System.out.println("List of coffees: " + coffeeDAO.getAll());

        //coffeeDAO.delete(newId);

        System.out.println(" Coffee with id "+newId+" deleted");

        System.out.println("List of coffees: " + coffeeDAO.getAll());

        }
}
