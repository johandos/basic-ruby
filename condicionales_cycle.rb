# basic if
is_authenticated = true
if is_authenticated
  puts "Pantalla admin"
else
  puts "Pantalla de login"
end
# if with else
role = :user
if role === :admin
  puts "Pantalla Admin"
elsif role == :super_admin
  puts "Pantalla SuperAdmin"
else
  puts "Pantalla Login"
end
# cycle
# While
x = 1
while x < 5 do
  puts "While #{x}"
  x+=1
end
#Loop
x = 1
loop do x > 5
  puts "Loop #{x}"
  x+=1
  break if x >= 5
end
# For
i = 1
for i in 1..4 do
  puts "For #{i}"
end
# Each
[1,2,3,4].each {|x| puts "Each #{x}"}
# Times
4.times {|x| puts "Times #{x}"}
#Range
puts ("Range 1".."Range 5").to_a
