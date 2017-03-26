module WithCms
  class SettingsController < ApplicationController
    def index
      @sections = Section.all
    end
  end
end