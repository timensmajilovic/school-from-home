class GroupsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_group, only: [:show]
    def index
        @groups = Group.all
    end

    def show 

    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new  group_values
        @group.user_id = current_user.id
        if @group.save
            redirect_to  groups_path
        else
            render :new
        end
    end
end