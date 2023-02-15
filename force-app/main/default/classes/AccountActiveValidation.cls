// é um Validator!
public with sharing class AccountActiveValidation implements RecordValidation{

    public void validate(Map<Id, SObject> records, Map<Id, SObject> oldRecords) {

        Map<Id, Account> accounts = (Map<Id, Account>) records;

        for(String accountId: accounts.keySet()) {

            if(!accounts.get(accountId).isDeleted) continue;

            accounts.get(accountId).addError('Esse registro nao está ativo');
            
        }
    }
}