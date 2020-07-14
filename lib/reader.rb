require_relative 'offense.rb'

require 'open-uri'
require 'nokogiri'

class Reader
  include Offenses
    attr_reader :name, :format, :content
    attr_writer :initial_report

    def initialize
      initial_report = Hash.new { files_inspected: [],
                                  total_files: 0, # files_inspected.length
                                  offenses?: false,
                                  total_offenses: 0 }
      @initial_report = initial_report
    end

    def parse_html
      doc = File.open('./tests/index.html') { |f| Nokogiri::HTML(f) }
    end
    
    def html_offenses_finder
      array = parse_html.css('script')
      array.size.times do |i|
          if array[i].text.empty? # each array[i].text all empty?
              next
          else
            Offenses:: # add ERROR:html to report
          end    
      end
      report[offenses_details] << ERROR[0][html]
    end

    def parse_javascript
      # empty
    end

    def javascript_offenses_finder
      #if L.control.layers(...).addTo(...)
              # L. "..." addTo(...).true?
                # if "..." != control.layers( && L.control.layers
                # offenses[...] << counter += 1, offense [:js]
                # end
      #else next
      #end
      # if geojson advise to rename
      # file > 5mb? ? report_array[i]_offense
    end  

    def folder_scanner
      Dir.glob('*/*.*') do |file|
        case File.extname(file)
        when '.html'
          puts File.expand_path(file) # to initial_report[:files_inspected]
        when '.js'
          puts File.expand_path(file)
          file_read = File.read(file).split
          for line in file_read
            line.match?(javascript_offenses_finder)
            more_than_5mb? = File.size > 40000000 ? true : false
          end
        when '.json'
          puts File.expand_path(file)
        when '.geojson'
          puts File.expand_path(file)
        else
          puts File.expand_path(file)
        end
      end
    end

    def files_scanner #push offense_item to offenses_report[:offense_item]
      total_lines = File.foreach(file).count do |offense_item|
        offense_item = Hash.new { path: '',
                                  offense_row: 0,
                                  format: '',
                                  offense_description: '' }
        case file.format
        when '*.html'
          parse_html
          html_offenses_finder
          push result to new offense_item
        when '*.js'
          parse_javascript
          javascript_offenses_finder
          push result to new offense_item
        when '*.json'
          # push path to initial_report[:files_inspected]
        when '*.geojson'
          # push path to initial_report[:files_inspected]
        end  
      end
    end
end

class FinalReport
  attr_reader :initial_report, :offenses_report
  attr_writer :final_report
  
  def initialize
    final_report = Hash.new { initial_report:
                                {
                                  files_inspected: [],
                                  total_files: 0,
                                  offenses?: false,
                                  total_offenses: 0
                                },
                              offense_item: #per file
                                {
                                  path: '',
                                  offense_row: 0,
                                  format: '',
                                  offense_description: ''
                                } }
  end  

  offenses_read
    offense = Offenses.new
    offenses = []
    if offense
        offense_counter += 1
        offenses << offense
    end    
  offenses_report = Hash.new {offenses[offense]} << offenses
  #report should be = { "Files inspected":0,"Offenses":0, "Path": ["array of paths"]}
  
  File.reader_info
    while files in folder
      offenses_read
    else
      return offenses_report
end
