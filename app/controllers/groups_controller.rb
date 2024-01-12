class GroupsController < ApplicationController
  load_and_authorize_resource
  def index
    resource_menu('Group list')
  end

  def new
    resource_menu('New group', groups_path, 'Save')
  end

  def show
    session[:previous] = group_path(@group)
    resource_menu('Group items', groups_path)
  end

  def create
    if @group.save
      redirect_to(group_path(@group))
    else
      flash.now[:errors] = @group.errors.full_messages
      resource_menu('New group', groups_path, 'Save')
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
