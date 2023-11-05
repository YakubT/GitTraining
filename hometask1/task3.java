import java.lang.Math;

public class ASum {
	
	public static long findNb(long m) {
		long res = (long)Math.sqrt(2*Math.sqrt(m)-1);
    return ((res)*(res+1)/2)*((res)*(res+1)/2)==m?res:-1;
	}	
}