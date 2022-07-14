public class AccountDemoRecordTypeLazy{  
    //Lazy loading variant:
        //It’ll only get instantiated when someone will invoke the getInstance() method.
        //If that’s not null that means Singleton instance is already initialized by someone else
        //so it’ll just return the already initialized reference of Singleton instance.
    private static AccountDemoRecordTypeLazy instance = null;
    public String id {get;private set;}

    private AccountDemoRecordTypeLazy(){
        id = Account.sObjectType.getDescribe().getRecordTypeInfosByName().get('Demo').getRecordTypeId();
    }

    public static AccountDemoRecordTypeLazy getInstance() {
        if(instance == null) {
            instance = new AccountDemoRecordType();
        }
        return instance;
    }


}