class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show 
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark
    else
      render :new
    end
  end



  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to root_path
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :rating)
  end

end



