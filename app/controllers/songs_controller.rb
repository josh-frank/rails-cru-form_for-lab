class SongsController < ApplicationController
  
  def index
    @all_songs = Song.all
  end

  def new
    @new_song = Song.new
  end

  def create
    newly_created_song = Song.create( song_params( :name, :artist_id, :genre_id ) )
    redirect_to song_path( newly_created_song )
  end

  def edit
    @song_to_edit = Song.find( params[ :id ] )
  end

  def update
    newly_updated_song = Song.find( params[ :id ] )
    newly_updated_song.update( song_params( :name, :artist_id, :genre_id ) )
    redirect_to song_path( newly_updated_song )
  end

  def show
    @this_song = Song.find( params[ :id ] )
    @this_artist = @this_song.artist
    @this_genre = @this_song.genre
  end

  private

  def song_params( *args )
    params.require( :song ).permit( *args )
  end

end
