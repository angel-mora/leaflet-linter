# frozen_string_literal: true

# require_relative './interface.rb'
require_relative 'libraries.rb'

# Offenses report generator
class Offenses
  attr_reader :errors, :warnings
  attr_writer :report

  include ErrorsLibrary
  include WarningsLibrary
  def initialize
    @errors = ERRORS
    @warnings = WARNINGS
  end

  #   def offenses_details(offense)
  #     offenses_details = []
  #     total_offenses = 0
  #     if offense
  #       offenses_details << String.new "#{path}: #{error_line}: #{existing_offenses[Offense]}"
  #       total_offenses += 1
  #     end
  #   end
  # end

  #  offenses checker = if Reader.offenses?
  #   add offenses to offenses_report
  #   count offenses
  #   push paths to path
  #   count errors and warnings

  def test
    [{ files_inspected: 3 },
     { total_offenses: 3 },
     { path: 'index.html' },
     { warning: 1 },
     { error: 3 },
     { offenses_details:
       [errors_printer,
        warnings_printer] }]
  end

  def offenses_report_generator
    offenses_report = [
      { files_inspected: 0 }, # from Reader
      { total_offenses: 0 },
      { path: [] },
      { warning: 0 },
      { error: 0 },
      { offenses_details: [
          # if errors[symbol]
          # errors_printer,
          # if warnings[:symbol]
          # warnings_printer
        # end
        #end
          ] }]
  end
  # def checker
  #   total_offenses = 0
  #   files inspected = 0
  #   path = []
  #     offenses
  # end
end
