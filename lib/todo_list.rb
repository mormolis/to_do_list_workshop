require "todo"

class TodoList
  require_relative "./printer"
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

 def set_complete(index)
    all[index].set_complete
 end

  def to_string
    Printer.print_list(all)
    
  end

  private

  def all
    @todos
  end
end
