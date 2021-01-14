class GenresController < ApplicationController
  
  def index
    @all_genres = Genre.all
  end

  def new
    @new_genre = Genre.new
  end

  def create
    newly_created_genre = Genre.create( genre_params( :name ) )
    redirect_to genre_path( newly_created_genre )
  end

  def edit
    @genre_to_edit = Genre.find( params[ :id ] )
  end

  def update
    newly_updated_genre = Genre.find( params[ :id ] )
    newly_updated_genre.update( genre_params( :name ) )
    redirect_to genre_path( newly_updated_genre )
  end

  def show
    @this_genre = Genre.find( params[ :id ] )
  end

  private

  def genre_params( *args )
    params.require( :genre ).permit( *args )
  end

end
