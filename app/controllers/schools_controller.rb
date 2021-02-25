class SchoolsController < ApplicationController
         def new
		@school=School.new

	end

	def create
		@school=School.new(school_params)
		if @school.save
			redirect_to @school
                 else
			render 'new'
		end
	end
	def show
		@school=School.find(params[:id])
	end
	def edit
		@school=School.find(params[:id])
	end
	def update
		@school=School.find(params[:id])
		if @school.update(school_params)
			redirect_to @school
		else
			render 'edit'
		end

	end
	def destroy
		@school=School.find(params[:id])
		@school.destroy
		redirect_to schools_path
	end
	def index
		@schools=School.all
	end
	private
	def school_params
		params.require(:school).permit(:name, :curriculum)
	end 
end
