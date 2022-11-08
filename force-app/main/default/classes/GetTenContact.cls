public with sharing class GetTenContact {
    
        @AuraEnabled(Cacheable=true)
        public static List <Contact> getContacts(Integer num) {
            List<Contact> contList = [ SELECT Id, FirstName, LastName, Phone, Email
                                       FROM Contact
                                       ORDER BY FirstName ASC LIMIT num];
            return contList;
        }   
    }
       
 