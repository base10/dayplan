#-*- mode: ruby; x-counterpart: ../../spec/lib/dayplan/plan_spec.rb; tab-width: 2; indent-tabs-mode: nil; x-auto-expand-tabs: true;-*-

require 'erb'
require 'date'
require 'fileutils'

module Dayplan
  class Plan
    attr_reader :acting_date, :output_path, :warm_storage_path, :cold_storage_path
    attr_reader :current_files, :warm_storage_files

    def initialize( options = {} )
      @acting_date = options.fetch('acting_date') { DateTime.now }
    end

    def create
      set_paths
    end

    def archive
      set_warm_storage
      set_cold_storage
    end

    def set_paths

    end

    def set_warm_storage


    end

    def set_cold_storage

    end

    def hours_m_w
      "8:30-12,1:15-6 (8.25)"
    end

    def hours_t_th
      "8:30-12,1-6 (8.5)"
    end

    def hours_f
      "8:30-12,1:15-5 (7.25)"
    end

    def get_hours( acting_date )
      day_of_week = get_day_of_week( acting_date )
      hours       = ""

      case day_of_week
        when 'Monday',  'Wednesday' then  hours = hours_m_w
        when 'Tuesday', 'Thursday'  then  hours = hours_t_th
        when 'Friday'               then  hours = hours_f
        else                              hours = "Weekend!"
      end

      hours
    end

    def get_date_range( acting_date )
      formatted_date  = acting_date.strftime('%B %e, %Y')
      date_range      = "eventsFrom:'#{formatted_date} at 12 am' to:'#{formatted_date} at 11:59 pm'"
    end

    def get_calendar_info( acting_date )
      date_range    = get_date_range( acting_date )
      calendar_call = "icalBuddy -npn -nc -eed -ea -eep '*' -sc -ss '' -b '- ' #{date_range}"
      cal_info      = `#{calendar_call}`
    end

    def get_day_of_week( acting_date )
      acting_date.strftime('%A')
    end
  end
end
