package pl.sda;

import lombok.Setter;

@Setter
public class Calculator {
    private int n;

    public int square() {
        return n * n;
    }
}
