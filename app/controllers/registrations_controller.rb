class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      tasks_path
    end
end
