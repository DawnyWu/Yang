class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]


  def index
    @members = Member.order(:name).page params[:page]
  end

  def show
  end

  def new
    @member = Member.new
  end

  def edit
  end


  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
    end
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :sex, :age, :email, :department_id)
    end
end
