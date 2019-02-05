class AuthorController < ApplicationController

  # the route /books will run the index method
  # and load the index.html.erb
  def index
    @books = Book.where("author LIKE ?", params[:q])
  end

end

