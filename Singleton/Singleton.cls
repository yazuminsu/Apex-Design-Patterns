/**
Singleton restricts the instantiation of a class to to only one object
    within a single transaction context.

It ensures that the class provides a global point of access to it.
It helps minimize object instantiation for improved performance and to mitigate
    impact of governor limits.
 */

public class Singleton{
    private static Singleton instance = new Singleton();

    //can't instantiate the class from the outside since it's using a private constructor
    private Singleton(){
        System.debug('Singleton being initialized');
    }

    //a public method to have an ability to call the method and return an instance: 
    //Singleton.getInstance();
    public static Singleton getInstance (){
        return instance;
    }
}