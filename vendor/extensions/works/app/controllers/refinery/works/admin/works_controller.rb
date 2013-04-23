module Refinery
  module Works
    module Admin
      class WorksController < ::Refinery::AdminController

        crudify :'refinery/works/work', :xhr_paging => true

      end
    end
  end
end
