public class Solution {

  public int solution(int number) {
     number--;
     long n = number / 3;
     long k = number / 5;
     long cnt35 = (int)n/5;
     int sum = (int)(3*(1+n)*n/2+5*(1+k)*k/2-15*(1+cnt35)*cnt35/2);
     return sum; 
    
  }
}