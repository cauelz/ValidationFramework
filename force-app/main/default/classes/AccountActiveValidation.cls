public with sharing class AccountActiveValidation implements RecordValidation{

    public void validate(Map<Id, SObject> records, Map<Id, SObject> oldRecords) {
        for(String recordId: records.keySet()) {

            if(records.get(recordId).isActive == true) continue;

            records.get(recordId).addError('Esse registro nao está ativo');
            
        }
    }
}