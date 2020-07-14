# frozen_string_literal: true

# require_relative './interface.rb'
require_relative 'libraries.rb'

# Offenses report generator
class OffensesReport
  attr_reader :offenses
  attr_writer :offenses_report

  include Offenses
  def initialize
    @offenses = offenses
    offenses_report = Hash.new #from reader to offense
  end

  def offenses?
    Reader::global_scanner.offenses_stored match offenses_library? #return true
  end

  def total_offenses
    offenses_report[:total_offenses] = Reader.offenses_stored
  end

  def offense_row
    #
  end
  
  def offense_description
    #
  end

  def offense_item
    item = "#{path}" + "#{offense_item}" + "#{format}" + "#{offense_description}"
  end

  #  offenses checker = if Reader.offenses?
  #   add offenses to offenses_report
  #   count offenses
  #   push paths to path
  #   count errors and warnings

end
