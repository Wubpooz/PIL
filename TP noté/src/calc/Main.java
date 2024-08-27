package calc;

public class Main {

	public static void main(String[] args) throws Exception {
		String file = args.length > 0 ? args[0] : "test.txt";
		java.io.Reader reader = new java.io.FileReader(file);
		Lexer lexer = new Lexer(reader);
		parser parser = new parser(lexer);
		try {
		    parser.parse();
		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			System.exit(1);
		} catch (Error e) {
			System.out.println("error: " + e.getMessage());
			System.exit(1);
		}
	}

}
