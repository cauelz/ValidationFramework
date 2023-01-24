public with sharing class AccountActiveValidation implements RecordValidation {

    public void validate(List<SObject> records) {
        for(SObject record: records) {
            if(record.isActive != true) {
                record.addError('Esse registro nao está ativo');
            }
        }
    }
}