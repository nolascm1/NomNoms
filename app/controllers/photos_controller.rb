class PhotosController < ApplicationController
     before_action :authenticate_user!


    def create
        @place = place.find(params[:place_id])
        @place.photos.create(photos_params.merge(user: current_user))
        redirect_to place_path(@place)
    end

    private

    def photo_params
    params.require(:photo).permit(:caption)
    end

end


end