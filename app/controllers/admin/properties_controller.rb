module Admin
  class PropertiesController < Admin::ApplicationController
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    #
    # def update
    #   super
    #   send_foo_updated_email(requested_resource)
    # end

    # Override this method to specify custom lookup behavior.
    # This will be used to set the resource for the `show`, `edit`, and `update`
    # actions.
    #
    # def find_resource(param)
    #   Foo.find_by!(slug: param)
    # end

    # The result of this lookup will be available as `requested_resource`

    # Override this if you have certain roles that require a subset
    # this will be used to set the records shown on the `index` action.
    #
    # def scoped_resource
    #   if current_user.super_admin?
    #     resource_class
    #   else
    #     resource_class.with_less_stuff
    #   end
    # end

    # Override `resource_params` if you want to transform the submitted
    # data before it's persisted. For example, the following would turn all
    # empty values into nil values. It uses other APIs such as `resource_class`
    # and `dashboard`:
    #
    # def resource_params
    #   params.require(resource_class.model_name.param_key).
    #     permit(dashboard.permitted_attributes).
    #     transform_values { |value| value == "" ? nil : value }
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    before_action :check_create, only: [:create]
    before_action :check_self, only: %i[edit update destroy]

    def check_self
      entity = model.find_by(id: params[:id].to_i)
      unless entity.character.user.id == current_user.id
        redirect_back_or_to admin_characters_path, notice: "Only can edit/delete your char's #{model.name.downcase}"
      end
    end

    def check_create
      char = Character.find_by(id: params[:property][:character_id].to_i)
      unless current_user.id == char.user.id
        redirect_back_or_to admin_characters_path, notice: "Only can create #{model.name.downcase} for own character"
      end
    end

    def model
      Item
    end
  end
end