package pl.sda;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class Calculator {
    private int n;

    public int square() {
        return n * n;
    }
}
