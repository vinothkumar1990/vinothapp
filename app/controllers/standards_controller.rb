class StandardsController < ApplicationController
	def new
    
		@standard=Standard.new
	end
	def create
		@standard = Standard.new(standard_params)
           if @standard.save
               
               
               redirect_to @standard
           else
               
               render 'new'
           end
	end
	def show
		@standard=Standard.find(params[:id])
	end
	def edit
		@standard=Standard.find(params[:id])
	end
	def update
        @standard = Standard.find(params[:id])
          if @standard.update(standard_params)
               redirect_to @standard
          else
               render 'edit'
          end
    end
	def index
		@standards=Standard.all
                
	end
	def destroy
        @standard = Standard.find(params[:id])
        @standard.destroy
        redirect_to standard_path
    end
 
	private
	def standard_params
		params.require(:standard).permit(:name, :school_id)
	end


end
