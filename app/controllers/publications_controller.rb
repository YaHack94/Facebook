class PublicationsController < ApplicationController
	def edit
		@publication = Publication.find(params[:id])
		render "accounts/edit"
	end
	def editform
		@publication = Publication.find(params[:id])
		if @publication.update(pub_params)
			flash[:pub_update] = "Post mis à jour avec succès"
			redirect_to '/dashboard'
		else
			flash[:pub_update_errors] = @publication.errors.full_messages
  			redirect_to edit_path(@publication)
  		end
	end

	private
		def pub_params
	      params.require(:publication).permit(:image, :content)
	    end
end
