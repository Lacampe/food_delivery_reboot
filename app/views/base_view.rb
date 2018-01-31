class BaseView
  def ask_for(x, y)
    puts "What is the #{x} of the new #{y}?"
    print "> "
    return gets.chomp
  end
end
