# frozen_string_literal: true

# spec/linter_spec.rb

require_relative '../lib/interface.rb'

describe Interface do
  context '#final_report' do
    let(:success_report) do
      [{ files_inspected: 3 },
       { total_offenses: 2 },
       { path: 'index.html' },
       { warning: 0 },
       { error: 0 },
       { offenses_details: nil }]
    end
    it 'no offenses detected' do
      output = "Inspecting 3 files.\nNo offenses detected"
      expect(final_report(success_report)).to eql(output)
    end
  end
end

describe Interface do
  context '#final_report' do
    let(:all_offenses_report) do
      [{ files_inspected: 5 },
       { total_offenses: 3 },
       { path: 'index.html' },
       { warning: 1 },
       { error: 2 },
       { offenses_details: nil }]
    end
    it 'offenses detected' do
      output = 'Inspecting 3 files.\nNo offenses detected'
      expect(final_report(all_offenses_report)).to eql(output)
    end
  end
end
