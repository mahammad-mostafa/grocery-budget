class GroupsController < ApplicationController
  load_and_authorize_resource
  def create
    if @group.save
      redirect_to(group_path(@group))
    else
      flash.now[:errors] = @group.errors.full_messages
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
