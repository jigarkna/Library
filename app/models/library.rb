class Library < ApplicationRecord
     # Callbacks
     before_save :merge_data
     after_destroy :update_log
 
     def merge_data
         self.price = "#{self.price}  Rs"
         self.name = "Title : " + self.name
         self.author = "Mr./Mrs " +  self.author
     end 
 
     def update_log
         logger.info "------------- Book has been Deleted #{self.name}!"
     end
end
