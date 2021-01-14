class ArtistsController < ApplicationController
  
  def index
    @all_artists = Artist.all
  end

  def new
    @new_artist = Artist.new
  end

  def create
    newly_created_artist = Artist.create( artist_params( :name, :bio ) )
    redirect_to artist_path( newly_created_artist )
  end

  def edit
    @artist_to_edit = Artist.find( params[ :id ] )
  end

  def update
    newly_updated_artist = Artist.find( params[ :id ] )
    newly_updated_artist.update( artist_params( :name, :bio ) )
    redirect_to artist_path( newly_updated_artist )
  end

  def show
    @this_artist = Artist.find( params[ :id ] )
  end

  private

  def artist_params( *args )
    params.require( :artist ).permit( *args )
  end

end
