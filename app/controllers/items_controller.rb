class ItemController < ApplicationController
  load_and_authorize_resource
  def create
    if @item.save
      redirect_to(group_path(@item.groups.first))
    else
      flash.now[:errors] = @item.errors.full_messages
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :amount)
  end
end
