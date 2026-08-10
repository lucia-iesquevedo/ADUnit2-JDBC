package JDBCCoffeeExample.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Coffee {
    private int id;
    private String name;
    private int idSupplier;
    private float price;
    private int sales;
    private float total;

    public Coffee(int id, int sales) {
        this.id = id;
        this.sales = sales;
    }
}
