module WithCms
  class SectionsController < ApplicationController
    layout "with_cms/application"
    
    def index
      @sections = Section.all
    end

    def new
      @section = Section.new
    end

    def create
      Section.create(section_params)
      redirect_to :root
    end

    def edit
      @section = Section.find(params[:id])
    end

    def update
      @section = Section.find(params[:id])
      @section.update_attributes(section_params)
      redirect_to :root
    end

    def sort
      rank = 0
      params[:sec_id].each do |secid|
        Section.find(secid).update(rank: rank)
        rank += 1
      end
      render json: {"message": "success"}, status: 200
    end

    private

   def section_params
     params.require(:section).permit(:name, :rank)
   end
  end
end