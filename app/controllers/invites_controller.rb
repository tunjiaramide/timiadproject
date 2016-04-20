class InvitesController < ApplicationController
	before_action :find_invite, only: [:show, :edit, :update, :destroy]

	def index
		@invites = Invite.all
	end

	def show
	end

	def new
		@invite = current_user.invites.build
	end

	def create
		@invite = current_user.invites.build(invite_params)
		if @invite.save
			redirect_to @invite, notice: "Successfully created Invite"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @invite.update(invite_params)
			redirect_to @invite, notice: "Successfully updated"
		else
			render 'edit'
		end
	end


	def destroy
		@invite.destroy
		redirect_to root_path
	end


	private

	def invite_params
		params.require(:invite).permit(:image, :title, :date, :category, :location)
	end

	def find_invite
		@invite = Invite.find(params[:id])
	end


end
