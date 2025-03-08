require 'io/console'

def binary_keyboard
    puts "paina näppäintä, tai lopeta ctr+c"

    STDIN.raw do |stdin|
        loop do 
            char = stdin.getc
            break if char == "\u0003"

            ascii_value=char.ord
            binary_string = ascii_value.to_s(2).rjust(8,'0')

            puts "Näppäin: #{char.inspect} -> binääri: #{binary_string}"
        end
    end
end

binary_keyboard