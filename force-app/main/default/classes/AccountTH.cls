public with sharing class AccountTH extends TriggerHandler {

    private AccountService service;
    private Map<Id, Account> oldRecords;
    private Map<Id, Account> records;

    public AccountTH() {
        this.records = new Map<Id, Account>( (Map<Id, Account>) Trigger.newMap);
        // modificar o newMap to new
        this.oldRecords = new Map<Id, Account>( (Map<Id, Account>) Trigger.oldMap);
        this.service = new AccountService(this.records, this.oldRecords);
    }

    override
    public void beforeUpdate() {
        this.service.executeValidations();
    }

    override
    public void beforeInsert() {
        this.service.executeValidations();
    }
}