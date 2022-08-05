class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
  def actors_list
    actor = self.actors
    actor.first.first_name + " " + actor.first.last_name
  end
end