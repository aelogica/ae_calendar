module AeCalendar
  class CalendarsController < ApplicationController
    def index
      respond_to do |format|
        format.html
        format.js { render json: AeCalendar::Event.all }
      end
    end
  end
end
