package eyedencrypt;

/**
 * Generate random number
 * 
 * Frank 2-10-2014
 */
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.UUID;

/**
 * @author Frank
 *
 */
public class RandomId {

	private static SecureRandom random = new SecureRandom();
	
	
	public static String getUUID32() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
	
	public static String getRandom(int len) {
		return new BigInteger(len * 5, random).toString(32);
	}
}
