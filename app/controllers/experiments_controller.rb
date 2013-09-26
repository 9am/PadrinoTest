class ExperimentsController < ApplicationController
  def index
    @exps = Post.all
  end

  def show
    @exp = Post.find(params[:id])
    @comments = @exp.comments.paginate(page: params[:page], per_page: 5)
  end
end
