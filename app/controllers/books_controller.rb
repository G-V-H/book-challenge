class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :setup_data

  def index
    render json: @data
  end

  def show
    #respond back with the book in json
    render json: @data[params[:id].to_i - 1]
  end

  def create
    #respond back with the created book in json
    new_book = {id: "#{@data.length}", title: "#{params[:name]}", author: "#{params[:writer]}"}
    @data.push(new_book)
    render json: new_book
  end

  def update
    #respond back with the updated book in json
    updated_book = {id: "#{@data[params[:id].to_i - 1]}", title: "#{params[:name]}", author: "#{params[:writer]}"}
    @data[params[:id].to_i - 1] = updated_book
    render json: updated_book
  end

  def destroy
    #respond back with the deleted book in json
    render json: @data.delete_at(params[:id].to_i - 1)
  
  end

  private
  def setup_data
    @data = [
      {id: "1", title: "Harry Potter", author: "J.K Rowling"},
      {id: "2", title: "Name of the wind", author: "Patrick Rothfuss"}
    ]
  end
end
