module WithCms
  class SectionsController < ApplicationController
    def index
      @sections = Section.all
    end

    def new
      
    end
  end
end