class ExperimentsController < ApplicationController
  def index
    @exps = Post.all
  end

  def show
    @exp = Post.find(params[:id])
  end
end
