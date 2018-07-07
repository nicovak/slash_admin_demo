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
    end
  end
end
