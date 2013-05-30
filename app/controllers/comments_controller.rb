class CommentsController < ApplicationController
# from devise to ensure user is authentic
#will take options like , :only[:create]
before_filter :authenticate_user! 

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end
end