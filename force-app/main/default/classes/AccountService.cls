public with sharing class AccountService implements Validation {

    AccountActiveValidation activeValidation;
    List<Validation> validations = new List<Validations>();
    Account newAccounts;

    public AccountService(this.newAccounts) {
        this.newAccounts = newAccounts;
        this.init();
    }

    void init() {
        this.createValidations();
    }

    void validate() {
        for (RecordValidation validation : validations) {
            validation.validate();
        }
    }

    void createValidations() {
        validations.add(new AccountActiveValidation(this.newAccounts));
    }

}