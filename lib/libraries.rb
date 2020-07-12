# frozen_string_literal: true

# Errors parameters
module ErrorsLibrary
  ERRORS = [{ js:
                'Error: Layers out of L.control.layers(...).addTo(...)' },
            { html:
                'Error: Content inside script detected.
                Add src to script tag and relocate code.
                Example: /js/script_relocated.js' }].freeze

  def errors_printer
    ERRORS.each do |format|
      format.each do |key, details|
        puts "#{key}: #{details}"
      end
    end
  end
end

# Warnings parameters
module WarningsLibrary
  WARNINGS = [{ 'js, json, geojson': 'Warning: Files bigger than 5mb.
                  Compression suggested. Try https://mapshaper.org/' }].freeze

  def warnings_printer
    WARNINGS.each do |format|
      format.each do |key, details|
        puts "#{key}: #{details}"
      end
    end
  end
end
