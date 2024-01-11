
public class Program {

    public static void main(String... args) {
        final var isekai = new Book(
                "isbn1",
                87.99
        );

        System.err.println(isekai.toString());
    }
}

class Book {

    private final String isbn;
    private final double price;

    public Book(String isbn, double price) {
        this.isbn = isbn;
        this.price = price;
    }

    @Override
    public String toString() {
        // return STR."""
        // 	Book(
        // 		ISBN: \{this.isbn},
        // 		Price: \{this.price},
        // 	)
        // 	""";
        // }
        return "";
    }
