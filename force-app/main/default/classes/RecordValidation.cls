public interface RecordValidation {

    void validate(Map<Id, SObject> records, Map<Id, SObject> oldRecords);

}