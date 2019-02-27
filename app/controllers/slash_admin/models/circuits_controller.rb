module SlashAdmin
  module Models
    class CircuitsController < SlashAdmin::ModelsController
      def list_params
        [
          { image: { type: :image } },
          :code,
          :name
        ]
      end

      def update_params
        [
          :image,
          :code,
          :name,
          :url,
          { google_map: {
            type: :google_map,
            default_zoom: 11,
            google_api_key: ENV['GOOGLE_MAP_KEY'],
            default_latitude: '48.8534',
            default_longitude: '2.3488'
          } }
        ]
      end
    end
  end
end
