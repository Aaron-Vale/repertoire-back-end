class SongsController < ProtectedController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    @url = request.original_url
    uri = URI.parse(@url)
    params = CGI.parse(uri.query)
    order = params['order'][0]
    @songs = current_user.songs.all.order("#{order} ASC")

    render json: @songs
  end

  # GET /songs/1
  def show
    render json: @song
  end

  # POST /songs
  def create
    @song = Song.new(song_params)
    if @song.save
      render json: @song, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = current_user.songs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.require(:song).permit(:name, :user_id, :composer, :instrument, :order)
    end
end
