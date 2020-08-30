# frozen_string_literal: true

# require_relative './interface.rb'
require_relative 'libraries.rb'

# Offenses report generator
class OffensesReport
  attr_reader :offenses
  attr_writer :offenses_report, :offense_item

  include Offenses
  def initialize
    @offenses = offenses
    offenses_report
    offense_item = {
      paths: '',
      offense_row: 0,
      format: '',
      offense_description: ''
    }
  end

  def offenses?
    false if offenses_report.empty?
  end

  def offense_row
    #
  end

  def offense_description
    #
  end
end
