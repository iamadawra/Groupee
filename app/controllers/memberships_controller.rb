class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @memberships = Membership.all
    respond_with(@memberships)
  end

  def show
    respond_with(@membership)
  end

  def new
    @membership = Membership.new
    respond_with(@membership)
  end

  def edit
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.save
    respond_with(@membership)
  end

  def update
    @membership.update(membership_params)
    respond_with(@membership)
  end

  def destroy
    @membership.destroy
    respond_with(@membership)
  end

  private
    def set_membership
      @membership = Membership.find(params[:id])
    end

    def membership_params
      params[:membership]
    end
end
