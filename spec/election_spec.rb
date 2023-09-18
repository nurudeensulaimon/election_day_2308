require './lib/candidate'
require './lib/race'
require './lib/election'
require 'rspec'

RSpec.describe Election do 
  before(:each) do 
    @election = Election.new('1990')
    @race=Race.new("Texas Governor")
  end
  it 'exists' do 
    expect(@election).to be_a_instance_of(Election)
  end

  it 'has an attribute' do 
    expect(@election.year).to eq('1990')
    expect(@election.races).to eq([])
  end

  it 'has a #add_race' do 

    @election.add_race(@race)
    expect(@race.office).to eq("Texas Governor")
    expect(@election.races).to eq([@race])
    expect(@race.candidates).to be_a Array
  end

  it "returns all candidates from all races" do
    @election.add_race(@race1)
  expect(@election.candidates).to eq [@candidate1, @candidate2]
  end
end


