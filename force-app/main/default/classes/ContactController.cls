 public with sharing class ContactController {
    @AuraEnabled(Cacheable=true)
    public static List <Contact> getContacts() {
        List<Contact> contList = [ SELECT Id, FirstName, LastName, Phone, Email
                                   FROM Contact
                                   ORDER BY FirstName ASC];
        return contList;
    }   
}
   