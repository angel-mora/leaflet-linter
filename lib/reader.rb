require_relative 'offense.rb'

Class File
    attr_reader :name :format :content
    attr_writer :file
    def initialize do
      # eval if any html,js,json or geojson             
    end

    def reader do
      file.each do |format|
          case format
          when html
              #loading and processing method
          when js
              #loading and processing method
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

Class Report
    attr_reader :file
    attr_writer :report
      offenses_read
        offense = Offenses.new
        offenses = []
        if offense
            offense_counter += 1
            offenses << offense
        end    
      report = Hash.new {offenses[offense]} << offenses
      #report should be = { "Files inspected":0,"Offenses":0, "Path": ["array of paths"]}
      
      File.reader_info
        html_counter = 0
        js_counter = 0
        json_counter = 0
        geojson_counter = 0
        while files in folder
            offenses_read
        else
            return hash report
end
