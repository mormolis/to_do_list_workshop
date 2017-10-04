module Printer
  
  def self.print_list(todos)
    str=""
    todos.each_with_index do |todo, index|
      str += "#{index+1}. #{todo.description} #{complete_conversion(todo)}\n"
    end
    str.chomp
  end

  private 
  def self.complete_conversion(todo)
    todo.complete ? "complete" : "not complete"
  end

end