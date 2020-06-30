class LandmarksController < ApplicationController
  # add controller methods
  
  #index
  get '/landmarks/?' do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  #new
  get '/landmarks/new' do
    @figures = Figure.all
    erb :"landmarks/new"
  end

  #show
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show"
  end

  #create
  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    redirect :"landmarks/#{@landmark.id}"
  end

  #edit
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    @figures = Figure.all
    erb :"landmarks/edit"
  end

  #update
  patch '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    redirect :"landmarks/#{@landmark.id}"
  end
end
