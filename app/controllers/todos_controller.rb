class TodosController < ApplicationController
  def create
    todo = Todo.new(todo_params)
    if todo.save
      render :nothing, status: 201
    end
  end

  private 
    def todo_params
      params.require(:todo).permit(:title)
    end
end