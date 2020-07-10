require_relative 'offense.rb'

class File
    attr_reader :name :format :content
    attr_writer :formats_report
    def initialize do
      # eval if any html,js,json or geojson 
      if format next to dot is formats[any]
        formats.counter[any] += 1
        paths << file            
    end

    def reader do
      formats_report = {}
      file.each do |format|
          case format
          when html
            # <script ...></script>
            report[offenses_details] << ERROR[0][html]
          when js
            #if L.control.layers(...).addTo(...)
              # L. "..." addTo(...).true?
                # if "..." != control.layers( && L.control.layers
                # offenses[...] << counter += 1, offense [:js]
                # end
            #else next
            #end      
          when json
              #loading and processing method
          when geojson
              #loading and processing method
          end
      end
    end

    def layer_control?
      if report[:offense] = js
        # read js file
        # search for layer control
        #case layer control when addTo(map) else it's alright
      end    
    end
    
    def script_empty?
      if report[:offense] = html
        # read js file
        # search for layer control
        #case layer control when addTo(map) else it's alright
      end
    end
    
    def beyond5mb?
      if report[:offense] = js, json, geojson
        # read js file
        # search for layer control
        #case layer control when addTo(map) else it's alright
        #if geojson advise to rename
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
