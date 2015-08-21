      # This program calculates what an artist should price her work for
      # using the cost of labor per hour plus the cost of materials.
      # The user is given an option to save and name the project.
      # If the project is named, it is saved in a hash.
      # The contents of the hash are then printed.

      # I used local variables input, saveop, hours, labor, cost, price, name
      # I used global variable $quits
      # I used loop do and .each to loop
      # I wrote the method credits

      # I would like to add default values if the user does not specify a value.
      # I would like the history of value changes to be logged and reversible.
      # I would like the option to add multiple materials with their own values.
      # I would like to have an interface so the user can press a button
      # to add a new project, edit an existing project, or delete a project.
      # I would like these changes to be reversible as well.
      # I would like many artists to have access to my app.  :)


    loop do
        print "Would you like to find the value of your project based on cost of labor per hour plus the cost of materials? Type yes or no"
        input = gets.chomp.upcase
        if input != "NO"

          print "How many hours did it take to complete the project?"
          hours=gets.chomp
          print "What is the value of labor per hour? $"
          labor=gets.chomp
          print "What is the cost of materials? $"

          cost=gets.chomp
          price=(hours.to_i*labor.to_i) + cost.to_i
          puts "The value of your project is estimated to be $#{price}."

          print "Would you like to name and save your project? Type yes or no"
          saveop = gets.chomp.upcase
        else
          $quits=="YES"
        end

        if saveop == "YES"
          print "Please enter name for project:"
          name=gets.chomp
          saved = {}
          saved[name] = price
          saved.each {|n, p| puts "#{n} is valued at $#{p}."}

        else
          $quits="YES"
        end

        print "Would you like to exit the program? Type yes or no"
        $quits=gets.chomp.upcase
        if $quits != "YES"
          print "Enter new project"
          puts " "
        else
          $quits =="YES"
        end

        break if $quits =="YES"
    end

    def credits
        puts "Program created by Julie David."
    end

    credits
    