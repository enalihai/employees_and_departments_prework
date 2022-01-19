require './lib/employee'
require './lib/department'
require './lib/division'
require 'pry'

RSpec.describe Division do
  describe '#iteration 3' do
    it 'exists' do
      bottling = Division.new("Bottling")

      expect(bottling).to be_a(Division)
    end

    it 'can read the name' do
      bottling = Division.new("Bottling")
      expect(bottling.name).to eq("Bottling")
    end 
  end
end
