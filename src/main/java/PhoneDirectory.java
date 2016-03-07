package main.java;


import java.io.*;
import java.util.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

/* Main Class*/
public class PhoneDirectory {
	
	String number;
	String name;
	/*  Initializing my Hash Table */
	public static Dictionary<String, String> pbook = new Hashtable<String, String>();/** Initialized my array*/
	
	/* Print Method prints the Phone Book  */
	public static void printDirectory()
	  {
		  System.out.println(pbook);
	  } 
	
	/*  Add Method adds key(name) and Value(number) to the hash table  */
	public static void addEntry(String name, String number){
		
		pbook.put(name, number);
		
	}
	/* Delete memebr deletes someone from the table  */
	public static void deleteEntry(String name){
		
		pbook.remove(name);
		
	}
	
	/* Gets a person from the hash table and returns it into a string  */
	public static String getNumber(String name)
	  {
		  return pbook.get(name);
	  }
	
	/*  Takes a name from the hash table and changes its number */
	public static  void  changeEntry(String name, String number){
		 
		 pbook.put(name, number);
		 
	 }	
	public static void fileIO()
	{ 
		  try 
		  {	
			 
			  File file = new File("C:/Users/samuel/Documents/AddressBook.txt");
			  /* Checks if the File exists */
			  if (!file.exists())
			  {
				  file.createNewFile();
			  }
			  FileWriter file_add = new FileWriter(file.getAbsoluteFile());
			  BufferedWriter file_wrapped = new BufferedWriter(file_add);
			  for (Map.Entry<String, String> entry : ((Hashtable<String, String>) pbook).entrySet()) 
			  {
				  String key = entry.getKey();
				  String value = entry.getValue();
				  file_wrapped.write( key + " " + value + "\n");
			  }
			  file_wrapped.close();
			  System.out.println("Done");
		  } 
			catch (IOException e) 
			{
				e.printStackTrace();
			}
		}  
}






