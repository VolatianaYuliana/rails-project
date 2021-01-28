class CategoriesController < ApplicationController
    # display the list of treatments of a category according to the user browser language
    def index
        @treatments = Treatment.where(:category_id => params[:id]).where(:is_active => true)

        if params[:lang] == "en"
            @val = "name"
        end

        if params[:lang] == "fr"
            @val = "name_fr"
        end

        if params[:lang] == "mg"
            @val = "name_mg"
        end

        @treatments_native = @treatments.each do |t|
            if t[@val] != nil && t[@val].strip != ""
                t.name = t[@val]
            end
        end
    end

    # save the user's treatment choice and his name
    def create
        @user = User.new(user_params)
        if @user.save
            render 'create'
        else
            redirect_to '/'
        end 
    end
    
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :treatment_id)
    end
end
