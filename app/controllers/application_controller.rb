class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for resource
    # if current_user.customer?
    #   customer_products_path
    # elsif current_user.admin?
    #   admin_products_path
    # end
  end

  def valid_admin
    unless current_user.admin?
      destroy_session_user
    end
  end

  def valid_customer
    unless current_user.customer?
      destroy_session_user
    end
  end

  private

  def destroy_session_user
    sign_out(current_user)
    redirect_to unauthenticated_root_path,
                alert: 'You do not have permission to access'
  end
end
