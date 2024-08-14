class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :check_if_admin, only: %i[new create]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def check_if_admin
    redirect_to(new_user_session_path, alert: 'Faça login antes de acessar essa página.') unless current_user&.admin?
  end
end
