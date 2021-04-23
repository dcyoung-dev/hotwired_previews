class PreviewsController < ApplicationController
  def create
    @preview = Post.new(params.require(:post).permit(:content))

    respond_to do |format|
      format.html {redirect_to new_post_url(post: @preview.slice(:content))}
      format.turbo_stream
    end
  end
end
