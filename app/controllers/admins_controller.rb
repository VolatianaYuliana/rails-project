class AdminsController < ApplicationController
    # diplay the list of treatments to be translated
    def home
        @treatments = Treatment.all
        @lang = ["French", "Malagasy"]
    end

    # save to database the translation of a treatment
    def update
        params[:name_fr].each do |k,v|
            if v == ""
                next
            end
            @treatment = Treatment.find(k)
            @treatment.update(name_fr: v)
        end
        params[:name_mg].each do |k,v|
            if v == ""
                next
            end
            @treatment = Treatment.find(k)
            @treatment.update(name_mg: v)
        end
        redirect_to '/admin/dashboard'
    end

    def login
    end

    # authenticate admin
    def auth
        @admin = Admin.find_by(username: params[:username])

        if @admin && @admin.authenticate(params[:password])
            redirect_to '/admin/dashboard'
        else
            redirect_to '/admin'
        end
    end
end
