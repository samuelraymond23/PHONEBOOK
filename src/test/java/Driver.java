package test.java;
import main.java.*;

public class Driver {
	  public static void main(String[] args) 
	  {
		  System.out.println("Initializing Dictionary \n");
		  
		  PhoneDirectory.addEntry("Abiola Oke", "2402402400");
		  PhoneDirectory.addEntry("Samuel Raymond", "1010101010");
		  PhoneDirectory.addEntry("Anthony barr", "5454545454");
		  PhoneDirectory.addEntry("Eric Berry", "2929292929");
		  
		  
		  System.out.println("Dictionary contains ");
		  PhoneDirectory.printDirectory();

		  System.out.println("\n This is Abiola's Number "); 
		  System.out.println(PhoneDirectory.getNumber("Abiola Oke") + "\n");


		  System.out.println("\n This is Eric Berry's Number "); 
		  System.out.println(PhoneDirectory.getNumber("Eric Berry") + "\n");
		  
		  System.out.println("I will now give Abiola a new Number");
		  PhoneDirectory.changeEntry("Abiola Oke", "3500350000");
		  System.out.println(PhoneDirectory.getNumber("Abiola Oke") + "\n");
		
		  
		  


		  System.out.println("I will now Delete Samuel's Number");
		  PhoneDirectory.deleteEntry("Samuel Raymond");


	;
		  PhoneDirectory.fileIO();
		  }
}
