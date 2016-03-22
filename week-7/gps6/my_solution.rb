# I worked on this challenge [with: Buck Melton].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Included in reflection

require_relative 'state_data'

#require 'pry'


class VirusPredictor

# Set up class instance, initializing instance variables
# state_of_origin, population_density, and population

  def initialize(state_of_origin ,population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# Compute the effects of the virus: predicted deaths and the speed
# of the spread of the virus.

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private


# Calculate people lost according to the attributes of the state.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    # binding.pry

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculate how fast the virus is expected to spread across this state.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end



end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])

STATE_DATA.each_key do |state|
  report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA)

# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#Reflection
=begin


Answer the following questions in your reflection:

1. What are the differences between the two different hash syntaxes shown in the state_data file?
  #
2. What does require_relative do? How is it different from require?
  # require_relative
  # is a statement that we can use to include data relative to source code file.

# require
  # is a statment that we can use to include data by specifying full path to data

3. What are some ways to iterate through a hash?
When refactoring virus_effects, what stood out to you about the variables, if anything?
  # It's a nested data structure. Outer most layer is "rocket notation" and innser layer is using 'symbol' notation.
  # virus_effects was passing instance varaibles to methods - which were accessible to other methods. This repeatition was removed.

4. What concept did you most solidify in this challenge?
  # Iterating over Hashes is still a bit confusing, mostly due to over thinking it. We used '.each_key' method and used 'keys' and retrive values.

=end
