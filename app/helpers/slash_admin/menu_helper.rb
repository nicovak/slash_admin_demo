# frozen_string_literal: true
module SlashAdmin
  module MenuHelper
    def menu_entries
      [
        {
          title: 'Dashboard',
          path: slash_admin.dashboard_path,
          icon: 'icon-home',
        },
        {
          title: 'Formule 1',
          icon: 'icon-speedometer',
          sub_menu: [
            { model: Circuit, icon: 'fas fa-flag-checkered' },
            { model: Constructor, icon: 'fas fa-industry' },
            { model: Driver, icon: 'fas fa-user-circle' },
          ],
        },
      ]
    end
  end
end
