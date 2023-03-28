/**
 * IntegerOverflow
 */
public class IntegerOverflow {

  public static void main(String[] args) {
    int i = Integer.MAX_VALUE;
    System.out.println(i);
    i = i + 1;
    System.out.println(i);
  }
}
