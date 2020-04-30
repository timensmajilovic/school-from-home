class SimpleCalendarController < ApplicationController
    def index
        @meetings = Task.all
    end
end
