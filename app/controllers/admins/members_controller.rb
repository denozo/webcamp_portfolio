class Admins::MembersController < ApplicationController
  
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    member =  Member.new(member_params)
    member.save
    redirect_to admins_member_path(member)
  end

  def show
    @member = Member.find(params[:id])
    @category = Category.find(@member.category_id)
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])
    member.update(member_params)
    redirect_to admins_member_path(member)
  end
  
  def destroy
    member = Member.find(params[:id])
    member.destroy
    redirect_to admins_members_path
  end
  
  
  private
  
  def member_params
    params.require(:member).permit(
      :category_id,
      :image,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :grade,
      :position,
      :height,
      :weight,
      :original_team,
      :hobby,
      :goal)
  end
  
end