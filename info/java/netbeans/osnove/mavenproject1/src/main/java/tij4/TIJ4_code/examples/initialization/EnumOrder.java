package tij4.TIJ4_code.examples.initialization;

public class EnumOrder {

    public static void main(String[] args) {

        for (Spiciness s : Spiciness.values()) {
            System.out.println(s + ", ordinal " + s.ordinal());
            System.out.println(s + ", ordinal " + s.name());
            System.out.println(s + ", ordinal " + s);
        }
    }
}
/* Output:
NOT, ordinal 0
MILD, ordinal 1
MEDIUM, ordinal 2
HOT, ordinal 3
FLAMING, ordinal 4
 *///:~
