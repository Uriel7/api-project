require 'test_helper'

class TodosTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "creation" do
  	counter = Todo.count
  	post todos_path, params: { todo: { title: "First Item" } }

  	assert_equal 201, response.status
  	assert_equal counter+1, Todo.count
  end
end

