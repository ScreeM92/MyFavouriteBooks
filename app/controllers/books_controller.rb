class BooksController < ApplicationController

  # the route /books will run the index method
  # and load the index.html.erb
  def index
    
    if params[:commit] and params[:commit] == 'Refresh'
      session[:genre] = {}
      session[:sort] = ''
      session[:by] = ''
    end

    sort = params[:sort]
    by = params[:by]
    case sort
      when 'title'
       ordering, @title_header = {:title => by}, 'hilite'
      when 'publishDate'
       ordering, @publishDate_header = {:publishDate => by}, 'hilite'
    end

    @selected_genre = params[:genre] || session[:genre] || {}
    @selected_sort = params[:sort] || session[:sort] || ''
    @selected_by = params[:by] || session[:by] || ''

    if params[:sort] != session[:sort] or params[:ratings] != session[:ratings] or params[:ratings] != session[:ratings]
      session[:sort] = @selected_sort
      session[:by] = @selected_by
      session[:genre] = @selected_genre
      redirect_to :sort => @selected_sort, :by => @selected_by, :genre => @selected_genre and return
    end

    if params[:genre] && params[:genre].any?
      @books = Book.where("genre IN (?)", params[:genre]).order(ordering);
    else
      @books = Book.all.order(ordering)
    end

    # @books = Book.all
    # @books = Book.all.order('created_at DESC')
    # same as first line but sort in descending (DESC) order 
    # based on what time they were created
  end

  def new
  	@book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "#{@book.title} was successfully created."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "#{@book.title} was successfully updated."
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "#{@book.title} was successfully deleted."
    redirect_to root_path
  end

  def author
    @books = Book.where("author LIKE (%?%)", params[:q])
    render 'author'
  end

  private

  def book_params
  	# require the :book table
  	# security mesure called 'strong params' where we must permit
  	# the different attributes (:title, :description, :author, :genre, :isbnNumber, :publishDate) that you 
  	# want to allow to be written to our database
  	params.require(:book).permit(:title, :description, :author, :genre, :isbnNumber, :publishDate);
  end

  def book_filter_param
    params.permit(:genre, :utf8, :commit);
  end

end

