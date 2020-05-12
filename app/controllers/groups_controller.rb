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
        @group = Group.new(group_params)
        if @group.save
            redirect_to  groups_path
        else
            render :new
        end
    end

    private

  def group_params
    params.require(:group).permit(:name, :opis)
  end
end