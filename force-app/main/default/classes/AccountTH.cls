public with sharing class AccountTH {

    private AccountService service;
    private Map<Id, Account> oldRecords;
    private Map<Id, Account> records;

    public AccountTH() {
        this.records = new Map<Id, Account>( (List<Account>) Trigger.newMap);
        this.oldRecords = new Map<Id, Account>( (List<Account>) Trigger.oldMap);
        this.service = new AccountService(this.records, this.oldRecords);
    }

    beforeUpdate() {
        this.service.executeValidations();
    }

    beforeInsert() {
        this.service.executeValidations();
    }
}