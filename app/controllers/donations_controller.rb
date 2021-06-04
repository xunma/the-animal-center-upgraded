class DonationsController < ApplicationController
  before_action :find_animal, only: [:index, :new, :create]
  before_action :set_donation, only: [:edit, :destroy, :update]

  def index
    @donations = @animal.donations
  end

  def new
    # here we need both the animal, an empty donation object
    @donation = Donation.new
  end

  def create
    donation = Donation.new(donation_params)
    donation.animal = @animal
    donation.save
    redirect_to animal_path(@animal)
  end

  def edit
  end

  def update
    @donation.update(donation_params)
    animal = @donation.animal
    redirect_to animal_donations_path(animal)
  end

  def destroy
    animal = @donation.animal
    @donation.destroy
    redirect_to animal_donations_path(animal)
  end

  private

  def donation_params
    params.require(:donation).permit(:description)
  end
  def set_donation
    @donation = Donation.find(params[:id])
  end

  def find_animal
    @animal = Animal.find(params[:animal_id])
  end
end
