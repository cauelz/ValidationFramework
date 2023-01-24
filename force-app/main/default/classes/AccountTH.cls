public with sharing class AccountTH {

    static AccountService service;
    
    public AccountTH() {

    }

    static {
        service = new AccountService(List<Account> newAccounts);
    }

    beforeUpdate(newRecords) {
        service.validate();
    }

    beforeInsert(newRecords) {
        service.validate();
    }
}