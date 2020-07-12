require_relative 'offense.rb'

require 'open-uri'
require 'nokogiri'

class Reader
    attr_reader :name, :format, :content
    attr_writer :formats_report
    def initialize
      # eval if any html,js,json or geojson 
      if format next to dot is formats[any]
        formats.counter[any] += 1
        paths << file
      end
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
            p "Not valid" # add ERROR:html to report
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

    def DirScanner
      formats_report = {}
      file.each do |format|
          case format
          when html
            parse_html
            html_offenses_finder
          when js, json, geojson
            parse_javascript
            javascript_offenses_finder
          end
      end
    end
end

class FinalReport
attr_reader :format_report :offenses_report
attr_writer :offenses_report
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
