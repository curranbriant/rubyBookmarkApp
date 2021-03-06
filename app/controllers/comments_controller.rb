class CommentsController < ApplicationController
    def create
      @bookmark = Bookmark.find(params[:bookmark_id])
      @comment = @bookmark.comments.create(comment_params)
      redirect_to bookmark_path(@bookmark)
    end
   
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
  end