/*
    Using the singleton design pattern, we can make sure that 
    utility classes are instantiated only once, 
    which can help in avoiding governor limits.
*/

public class AccountDemoRecordTypeEager{  
    //Eager Initialization:
        //Classes are loaded only once automatically by the JVM hence only one object will be created throughout the application
        //Can be used if cost of creating the instance is small
    private static AccountDemoRecordTypeEager instance = new AccountDemoRecordTypeEager();
    public String id {get;private set;}

    private AccountDemoRecordTypeEager(){
        id = Account.sObjectType.getDescribe().getRecordTypeInfosByName().get('Demo').getRecordTypeId();
    }

    public static AccountDemoRecordTypeEager getInstance() {
        return instance;
    }


}