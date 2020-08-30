require_relative 'offense.rb'

require 'open-uri'
require 'nokogiri'

# Scan for errors in files
class Reader
  include Offenses
  attr_reader :name, :format, :content
  attr_writer :initial_report, :offenses_report

  def initialize(initial_report, offenses_report)
  @initial_report = initial_report
  @offenses_report = offenses_report
  initial_report = { files_inspected: [''],
                     total_files: 0,
                     offenses?: false,
                     total_offenses: 0 }
  offenses_report = {}
  end

  def final_report
    final_report = {}
    final_report[:initial_report] = @initial_report 
    final_report[:offenses_report] = @offenses_report
  end

  def offense_item # make it a proc
    offense_item = {
      path: '',
      offense_row: 0,
      format: '',
      offense_description: '' }
  end

  def parse_html
    parse_html = File.open('./tests/index.html') { |f| Nokogiri::HTML(f) }
  end

  def html_offenses_finder
    array = parse_html.css('script')
    array.size.times do |i|
    print_offense = p 'Offense detected'
    # array[i].text.empty? ? next : print_offense
      # offenses_report[:offense_item] << offense_item.new
    end
  end

  def fill_item_description # make it a proc
    errors_keys = offenses_library[:errors].keys # [ 'js', 'html' ]
    warnings_keys = offenses_library[:warnings].keys # [ 'js', 'json', 'geojson' ]
    errors_values = offenses_library[:errors].values
    warnings_values = offenses_library[:warnings].values
      case errors_keys.include?(offense_item[:format])
      when errors
        offense_item[:offense_description] << offenses_library[:errors][:format]
      when warnings
        offense_item[:offense_description] << offenses_library[:warnings]  
      end
  end

  def format_relation
    offense_types = [offenses_library[:errors],offenses_library[:warnings]]

    offense_types.each do |key, value|
      if key == library_vs_report
        offense_item[:offense_description] << value # verify this
      else
        next
      end
    end
  end

  def l_control_conflict?
    #if L.control.layers(...).addTo(...)
      # L. "..." addTo(...).true?
      # if "..." != control.layers( && L.control.layers
      # offenses[...] << counter += 1, offense [:js]
      # end
    #else next
  end
  
  def more_than_5mb?(file)
    f_size = File.size(file)
    f_size > 5_242_880 ? true : false
  end
  
  def folder_scanner #push offense_item to offenses_report[:offense_item]
    files_inspected = []
    Dir.glob('*/*.*') do |file|
      case File.extname(file)
      when '.html'
        files_inspected.push(File.expand_path(file))
        html_offenses_finder
      when '.js'
        files_inspected.push(File.expand_path(file))
        more_than_5mb?(file)
        l_control_conflict?
      when '.geojson'
        files_inspected.push(File.expand_path(file))
        more_than_5mb?(file)
      else
        next
      end
    end
    puts files_inspected
  end

  def files_scanner 
    total_lines = File.foreach(file).count do |offense_item|
      offense_item.new
      case File.format
      when '*.html'
        parse_html
        html_offenses_finder
      when '*.js'
        parse_javascript
        javascript_offenses_finder
        # push result to new offense_item
      when '*.json'
        # push path to initial_report[:files_inspected]
      when '*.geojson'
        # push path to initial_report[:files_inspected]
      end
    end
  end
end
