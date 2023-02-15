public with sharing class EmptyAccountSiteValidation implements RecordValidation{

    public void validate(Map<Id, SObject> records, Map<Id, SObject> oldRecords) {

        Map<Id, Account> accounts = (Map<Id, Account>) records;

        for(String accountId: accounts.keySet()) {

            if(String.isNotEmpty(accounts.get(accountId).Site)) continue;

            accounts.get(accountId).addError('Este Registro está sem um site!');
            
        }
    }
}