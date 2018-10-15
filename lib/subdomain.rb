class Subdomain    
    def self..matches?(request)      
        case request.sub_domain     
        
            when 'www', '', nil        
            
                false      
        
        else        
            
                true      
        
        end    
    end 
end 
 #:constraints => Subdomain
