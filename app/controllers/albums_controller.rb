class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find params[:id]
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find params[:id]
  end

  def update
    @album = Album.find params[:id]

    if @album.update(album_params)
      redirect_to @album
    else
      render 'edit'
    end
  end

  def create
    # condition = Condition.find_by(description: param['condition'])
    @album = Album.new album_params
    @album.condition = Condition.find_by(name: 'Mint')
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  def destroy
    @album = Album.find params[:id]
    @album.destroy

    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :year, :artist)
  end
end
