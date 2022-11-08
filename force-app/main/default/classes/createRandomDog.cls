 public with sharing class createRandomDog {
            @AuraEnabled(cacheable=true)
            public static String getDog(){
                Http http = new Http();
                        HttpRequest request = new HttpRequest();
                        request.setEndpoint('https://dog.ceo/api/breeds/image/random');
                        request.setMethod('GET');
                        HttpResponse response = http.send(request);
                        return response.getBody();
            }
          }
                        
                        /*List<Lead>  listLead = new List<Lead>();
                        if(response.getStatusCode() == 200) {
                          Map<String, object> results = (Map<String, object>) JSON.deserializeUntyped(response.getBody());
                            system.debug(results);
                            system.debug(results.get('message'));
                            Lead lead=new Lead();
                            lead.FirstName='Rajat';
                            lead.Url_Image__c=string.valueOf(results.get('message'));
                            lead.Company='TECH M';
                            lead.LastName='Sharma';
                            lead.Status='Working Contacted';
                            listLead.add(lead);
                        }
                        insert listLead; 
                        system.debug(listLead);
                
                    }
                }
                */
        