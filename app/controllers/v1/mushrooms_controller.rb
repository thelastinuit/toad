module V1
  class MushroomsController < ApplicationController
    def index
      @pagy, records = pagy Mushroom.where mushroom_attributes
      serialized_mushrooms = records.map { |mushroom| MushroomSerializer.parse mushroom }
      render json: { mushrooms: serialized_mushrooms, pagy: pagy_metadata(@pagy) }, status: :ok
    end

    private

    def mushroom_attributes
      MushroomParser.call mushroom_params
    end

    def mushroom_params
      params
        .require(:mushroom)
        .permit(:id,
                :brushes,
                :capShape,
                :capSurface,
                :capColor,
                :odor,
                :gillAttachment,
                :gillSpacing,
                :gillSize,
                :gillColor,
                :stalkShape,
                :stalkRoot,
                :stalkSurfaceAboveRing,
                :stalkSurfaceBelowRing,
                :stalkColorAboveRing,
                :stalkColorBelowRing,
                :veilType,
                :veilColor,
                :ringNumber,
                :ringType,
                :sporePrintColor,
                :population,
                :habitat)
    end
  end
end
