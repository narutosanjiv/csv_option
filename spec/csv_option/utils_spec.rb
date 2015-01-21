require 'spec_helper'

fixture_path = 'spec/fixtures'

describe 'CSV file(comma separated file)' do
  before(:all) do
    @file_utils = CsvOption::Utils.new("#{fixture_path}/test.csv")
  end    

  it "parse headers" do
    headers = ["productid", "category", "listprice", "saleprice", "title", "imageurl", "url"]
    expect(@file_utils.parse_headers).to eq(headers.sort) 
  end

  it "parse colseparator" do
    expect(@file_utils.determine_column_separator).to eq(',') 
  end
    
  it "parse colseparator with data given" do
    expect(@file_utils.determine_column_separator("one|two|three\n")).to eq('|') 
  end

  it "parse row separator" do
    expect(@file_utils.determine_row_separator).to eq("\n")
  end
end
