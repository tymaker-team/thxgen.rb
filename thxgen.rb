#!/usr/bin/env ruby
args=ARGV
if args.first == "-h"
   puts "\033[1;32mthxgen.rb help\n\033[0m.............. \033[1;37m[ -h ] \033[0mhelp\n.............. \033[1;37mPlease answer the prompts in the fields provided.\n\033[0m.............. \033[1;37mRun the bare executable to run.\033[0m\n"
elsif args.first == nil
   puts "\033[1;37mWelcome to thxgen.rb! \033[1;31mPlease\033[1;37m do not input a/an in any of the questions.\033[0m"
   sleep(0.5)
   def thxgen ()
   print "Who are you writing to? "
   one_=gets
   print "What gift did you get from " + one_.chomp + "? e.g.: shirt "
   two_=gets
   print "What party did you invite " + one_.chomp + " to? e.g.: birthday "
   thr_=gets
   print "What is your name? "
   fou_=gets
   puts "You're writing to " + one_.chomp + ". You invited them to your " + thr_.chomp + ". They gave you a " + two_.chomp + ". You are " + fou_.chomp + ". Is this true? (y/n) "
   con1=gets
   if con1.chomp == "y"
   print "What is " + one_.chomp + "'s relationship with you? e.g.: parent "
   fiv_=gets
   print "How would you describe your " + fiv_.chomp + " " + one_.chomp + "? e.g.: cool "
   six_=gets
   print "What do you like doing with " + one_.chomp + "? e.g.: eating corn "
   sev_=gets
   puts "Your letter is complete! Type something and hit enter to see it!"
   done=gets
   letter="Dear " + one_.chomp + "\nThank you so much for getting me my " + two_.chomp + "! Thank you for coming to my " + thr_.chomp + ". I enjoy " + sev_.chomp + " with you. You are a " + six_.chomp + " " + fiv_.chomp + "!\nFrom,\n" + fou_.chomp
   print "Dear " + one_.chomp + "\nThank you so much for getting me my " + two_.chomp + "! Thank you for coming to my " + thr_.chomp + ". I enjoy " + sev_.chomp + " with you. You are a " + six_.chomp + " " + fiv_.chomp + "!\nFrom,\n" + fou_.chomp
   File.open("thxgen.txt", "w") { |f| f.write letter }
   puts "Your letter has been written to thxgen.txt."
   else
   puts "\033[1;37mStarting over.\033[0m\n"
   thxgen
   exit
   end
   end
   thxgen
end
