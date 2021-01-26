class ArticlesController < ApplicationController

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

		if (@article.save)
			redirect_to @article
		#TODO: ここ今いちわからん, 
		else
			render 'new'
		end
		# render plain: params[:article].inspect
	end


	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
