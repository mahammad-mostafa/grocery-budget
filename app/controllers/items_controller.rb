class ItemsController < ApplicationController
  load_and_authorize_resource
  def new
    @groups = Group.accessible_by(current_ability)
    session[:previous] = groups_path if session[:previous].nil?
    resource_menu('New item', session[:previous], 'Save')
  end

  def create
    if @item.save
      redirect_to(group_path(@item.groups.first))
    else
      flash.now[:errors] = @item.errors.full_messages
      resource_menu('New item', session[:previous], 'Save')
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :amount, group_ids: [])
  end
end
