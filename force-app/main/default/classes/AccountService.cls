public with sharing class AccountService {

    List<RecordValidation> validations = new List<RecordValidation>();
    private Map<Id, Account> accounts;
    private Map<Id, Account> oldAccounts;

    public AccountService(Map<Id,Account> accounts, Map<Id, Account> oldAccounts) {
        this.accounts = accounts.isEmpty() ? new Map<Id, Account>() : accounts;
        this.oldAccounts = oldAccounts.isEmpty() ? new Map<Id,Account>() : oldAccounts;
        this.createValidations();
    }

    public void executeValidations() {
        for (RecordValidation validation : validations) {
            validation.validate(this.accounts, this.oldAccounts);
        }
    }

    void createValidations() {
        this.validations.add(new AccountActiveValidation());
        this.validations.add(new EmptyAccountSiteValidation());
    }

}