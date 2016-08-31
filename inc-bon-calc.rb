#puts: writes to the screen
puts "Welcome to the SALARY + BONUS ESTIMATION TOOL"
puts "You can now figure your bonus based upon % of your salary"
puts "Just answer 2 or 3 questions and we will do the rest!!"

=begin
"print" displays the text shown between the "  "
first_name is a variable (memory location) which holds the data which can be used in by any program)
chomp means to chop off any characters limited to separators like \n and \r
Capitalize, when used after "chomp", will capitalize the first letter of the word.
=end

print "Please type your first name: "
first_name = gets.chomp.capitalize

# the argument  ".t_i"   Converts leading characters in str - as an integer
print "What is your annual Salary? "
salary = gets.chomp.to_i

# the argument  ".t_f"   Converts leading characters in str - to a Float (or 0.1 Decimal)
print "What is your Bonus percent? "
bonus_percent = gets.chomp.to_f

#calculations using the variables defined above, as well as new ones defined below:
bonus_amt = (bonus_percent / 100) * salary
sal_bon_tot = bonus_amt + salary
fed_tax_percent = 23
net_ann_tot = sal_bon_tot * (1.0 - (fed_tax_percent.to_f / 100.00))
net_mon_tot = net_ann_tot / 12

puts "#{first_name}, Your Bonus amount based upon the Bonus Percentage #{bonus_percent} is #{bonus_amt}"

puts "Your Salary and Bonus combined is: #{sal_bon_tot}"

puts "After Federal taxes of #{fed_tax_percent} percent, your combined Salary and Bonus total is: #{net_ann_tot}."

puts "#{first_name}, Your monthly income after taxes is: #{net_mon_tot}"
