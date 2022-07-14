trigger AccountTrigger on Account (before insert, before update) {

    for(Account record : Trigger.new){
        AccountDemoRecordType rt = AccountDemoRecordType.getInstance();
        record.recordTypeId = rt.id;
    }

}