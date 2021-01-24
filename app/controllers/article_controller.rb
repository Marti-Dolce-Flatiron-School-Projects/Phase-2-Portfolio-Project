# frozen_string_literal: true

# Articles
class ArticleController < ApplicationController

  # index

  get "/articles" do
    @article = Article.all
    erb :"/articles/index.html"
  end

  # new
  get '/articles/new' do
    @article = Article.new
    erb :"/articles/new.html"
  end

  # create
  post '/articles' do
    @article = Article.create(params)
    redirect to "/articles/#{@article.id}"
  end

  # show
  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :"/articles/show.html"
  end

  # edit
  get '/articles/:id/edit' do
    @article = Article.find(params[:id])
    erb :"/articles/edit.html"
  end

  # update
  patch '/articles/:id' do
    @article = Article.find(params[:id])
    @article.update(params[:article])
    redirect to "/articles/#{@article.id}"
  end

  # destroy
  delete '/articles/:id' do
    Article.destroy(params[:id])
    redirect to '/articles'
  end

  def destroy
    Article.destroy(params[:id])
    redirect to '/articles'
  end
end
