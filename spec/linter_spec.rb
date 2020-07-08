#spec/linter_spec.rb
require_relative './bin/main'

describe '#final_report' do
  it "no offenses detected" do
    success_report = [{ files_inspected: 3 },
                      { total_offenses: 2 },
                      { path: 'index.html' },
                      { warning: 0 },
                      { error: 0 },
                      { offenses_details: nil }]
    output = "Inspecting 3 files.\nNo offenses detected"                      
  expect(final_report(success_report)).to eql(output)
  end
  it "offenses detected" do
    all_offenses_report = [{ files_inspected: 5 },
                          { total_offenses: 3 },
                          { path: 'index.html' },
                          { warning: 1 },
                          { error: 2 },
                          { offenses_details: nil }]
    output = "Inspecting 3 files.\nNo offenses detected"                      
  expect(final_report(all_offenses_report)).to eql(output)
  end
end