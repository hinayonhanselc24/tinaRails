class StaffsController < ApplicationController

    def index
      # Your index action logic
    end
  
    def new
      @staff = Staff.new
    end
  
    def create
      logger.info "Staff Params: #{staff_params.inspect}"
      @staff = Staff.new(staff_params)
      if @staff.save
        session[:staff_id] = @staff.id
        redirect_to '/dashboard'
      else
        flash[:register_errors] = @staff.errors.full_messages
        logger.error "Staff Registration Errors: #{@staff.errors.full_messages.inspect}"
        redirect_to '/'
      end
    end
  
    private
  
    def staff_params
      params.require(:staff).permit(:fname, :lname, :email, :password, :password_confirmation)
    end
  end
  