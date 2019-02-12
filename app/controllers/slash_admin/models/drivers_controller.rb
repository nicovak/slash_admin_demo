module SlashAdmin
  module Models
    class DriversController < SlashAdmin::ModelsController
      def list_params
        [
          { image: { type: :image } },
          :code,
          :name,
          :date_of_birth,
          :nationality
        ]
      end
    end
  end
end
