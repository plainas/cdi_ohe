# TODO: Write documentation for `CdiOhe`
module CdiOhe
  VERSION = "0.1.0"
   
  if ARGV.size == 0
    STDERR.puts "No encoding keys! You need to provide at least one encoding key as argument."
    exit(1)
  end

  if STDIN.tty?
    STDERR.puts "No input found! You must provide input via STDIN."
    exit(1)
  end

  STDIN.each_line do |line|
  
    encoded_output = [] of String
  
    ARGV.each_with_index do | arg, arg_index|
      value = line == arg ? "1" : "0"
      encoded_output.push value
    end

    puts "#{encoded_output.join(" ")}\n"
  end

end
