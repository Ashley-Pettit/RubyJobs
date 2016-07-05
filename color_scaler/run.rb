MACHINE_CODE = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F']

def greeting
  puts 'Welcome to the color gradient scaler'
  puts 'Please put in two colors and we\'ll return a list of colors between the two!'
end

def input
  puts 'Please enter the starting color'
  #Assumption is made that input is accurate
  @start_color = gets.chomp.downcase
  puts 'Please enter the final color'
  @final_color = gets.chomp.downcase
  puts 'How many steps should there be between colors'
  @iterations = gets.chomp.downcase.to_i rescue nil
  #Assumption is made that input is valid (E.g. Not a letter).
    #A basic rescue will stop the program from crashing
  #Assumption is made that input < possibilities
  #Assumption is made that input < possibilities
  puts 'How many steps should there be between colors'
end

def seperate_into_rgb_components
  @red_starting_component = @start_color[0..1]
  @green_starting_component = @start_color[2..3]
  @blue_starting_component = @start_color[4..5]
  #Assumption made that a color will always have 6 digits of red, green and blue. As this won't change no need to consider scale.
end

def get_array
  # @iterations.times do
  # MACHINE_CODE[@red_starting_component].next
  puts MACHINE_CODE[3].next
  # end
end

input
seperate_into_rgb_components
