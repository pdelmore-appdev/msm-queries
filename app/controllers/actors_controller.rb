class ActorsController <ApplicationController

def index
@list_of_actors = Actor.all


render({ :template => "/actor_templates/index.html.erb" })
end

def actor_details
  the_id = params.fetch("actor_id")

  @actor = Actor.all.where({ :id => the_id }).first

  @characters = Character.all.where({ :actor_id => @actor.id }) #all characters played by the actor / Character table



  render({ :template => "/actor_templates/actor_details.html.erb" })
end

end
