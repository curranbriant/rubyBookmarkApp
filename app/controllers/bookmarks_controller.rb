class BookmarksController < ApplicationController

  http_basic_authenticate_with name: "Brian", password: "secret", except: [:index, :show]
 
  def index
    @bookmarks = Bookmark.all
  end
 
    def index
        @bookmarks = Bookmark.all
      end
     

    def show
        @bookmark = Bookmark.find(params[:id])
      end
     
      def new
        @bookmark = Bookmark.new(params[:bookmark])
      end

    def edit
      @bookmark = Bookmark.find(params[:id])
    end
    def update
      @bookmark = Bookmark.find(params[:id])
     
      if @bookmark.update(bookmark_params)
        redirect_to @bookmark
      else
        render 'edit'
      end
    end
     
    def create
        @bookmark = Bookmark.new(bookmark_params)
        
        if @bookmark.save
        redirect_to @bookmark
    else
        render 'new'
      end
    end
    def destroy
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
     
      redirect_to bookmarks_path
    end

  
     
    
      private
      def bookmark_params
        params.require(:bookmark).permit(:title, :URL)
      end
end

