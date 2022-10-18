class Role < ActiveRecord::Base

    has_many :auditions

    #auditions built-in instance method

    def actors
        actorData = self.auditions
        actorNames = actorData.map {|data| data.actor}
    end

    def locations
        actorData = self.auditions
        actorLocations = actorData.map {|data| data.location}
    end

    def lead
        actorData = self.auditions
        leadActor = actorData.where({hired: "true"})
    end

    def understudy
        actorData = self.auditions
        understudyActor = actorData.where({hired: "true"}).second
    end

end