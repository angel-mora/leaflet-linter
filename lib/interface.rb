# frozen_string_literal: true

# require_relative 'reader.rb'
require 'colorize'
require 'colorized_string'
require_relative './offense.rb'

# Print report to console
class Interface
  attr_reader :final_report

  def inspecting_files(final_report)
    puts "Inspecting #{final_report[:initial_report][:total_files]} files"
  end

  def no_offenses
    puts 'No offenses '.green + 'detected'
  end

  def offenses_detected(final_report)
    puts "#{final_report[:initial_report][:total_offenses]} offenses ".red + 'detected'
  end

  def offenses_list(final_report)
    puts final_report[:offenses_report][:offense_item]
  end

  def no_offenses?(final_report)
    final_report[:initial_report][:total_offenses].zero?
  end

  def no_files?(final_report)
    add_files = puts 'Please add some files'
    unknown = puts 'Unknown error'
    final_report[0][:files_inspected].zero? ? add_files : unknown
  end

  def console_output(final_report)
    if no_offenses?(final_report)
      inspecting_files(final_report)
      no_offenses
    elsif offenses_detected?(final_report)
      inspecting_files(final_report)
      offenses_detected(final_report)
      offenses_list(final_report)
    else puts 'Unknown error'.orange
    end
  end
end
