class Audition < ActiveRecord::Base
  
    belongs_to :role

    #role built-in instance method

    def call_back
        # self.hired = true
        # self.save!
        self.update(hired: true)
    end
    
end