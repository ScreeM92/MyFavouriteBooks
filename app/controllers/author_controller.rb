class AuthorController < ApplicationController

  # the route /author will run the index method
  # and load the index.html.erb
  def index
  	if params[:q] == "" and params[:title]
  		flash[:notice] = "'#{params[:title]}' has no author info"
      	redirect_to root_path
    end
    @books = Book.where("author LIKE ?", params[:q])
  end

end

