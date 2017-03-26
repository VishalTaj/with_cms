module WithCms
  class SettingsController < ApplicationController
  	layout "with_cms/application"
  	
    def index
      @sections = Section.all.order(:rank)
    end
  end
end