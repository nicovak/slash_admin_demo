module SlashAdmin
  module Models
    class ConstructorsController < SlashAdmin::ModelsController
      def list_params
        [
          { image: { type: :image } },
          :code,
          :name,
          :nationality,
        ]
      end
    end
  end
end
