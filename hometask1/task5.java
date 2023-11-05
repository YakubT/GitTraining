import java.util.Arrays;

public class Kata {
  public static String highAndLow(String numbers) {
    int min = Arrays.stream(numbers.split(" ")).map((el)->Integer.parseInt(el)).
      min((a,b)->Integer.compare(a,b)).get();
    int max = Arrays.stream(numbers.split(" ")).map((el)->Integer.parseInt(el)).
      max((a,b)->Integer.compare(a,b)).get();
    return String.valueOf(max)+" "+String.valueOf(min);
  }
}