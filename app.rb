 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
 # 															 #
 # Ruby Minimizer for CSS and JS files v1.0.5				 #
 # http://www.pedrojhenriques.com 							 #
 # 															 #
 # Copyright 2015, PedroHenriques 							 #
 # Free to use under the MIT license.			 			 #
 # http://www.opensource.org/licenses/mit-license.php 		 #
 # 															 #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

require "#{File.dirname(__FILE__)}/Includes/autoloader.rb"

begin
	# create an object with the Minimize class
	minimize = Minimize.new()

	puts "\n\rwatching for changes..."
	puts "=> CTRL-C to terminate"

	# endless loop
	# exit the app by terminating the console task (EX: CTRL + c)
	while true
		# call main method of the class that will check the specified files for changes and update the minimized versions when needed
		# the method receives an optional integer parameter representing the number of seconds to wait between each run down of the files
		# the default value for the parameter is 5 seconds
		minimize.watch()
	end
rescue Interrupt => e
	puts "\n\r=> Thank you for using this application!"
rescue Exception => e
	puts "\n\r=> ERROR: #{e}"
end