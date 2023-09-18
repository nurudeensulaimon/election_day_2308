require './lib/candidate'
require './lib/race'
require 'rspec'
require 'pry'

RSpec.describe Race do 
  before(:each) do 
    @race=Race.new("Texas Governor")
    @candidate1 = Candidate.new({name: "Diana D", party: :democrat})
    @candidate2 = Candidate.new({name: "Roberto R", party: :republican})
  end 

  it 'exists' do 
    expect(@race).to be_a_instance_of(Race)
    expect(@candidate1).to be_a_instance_of(Candidate)
    expect(@candidate2).to be_a_instance_of(Candidate)
    expect(@candidate1.class).to eq(Candidate)
  end

  it 'has an attribute' do
    expect(@race.office).to eq("Texas Governor")
    expect(@candidate1.name).to eq("Diana D")
    expect(@candidate1.party).to eq(:democrat)
  end

  it 'has a method #candidates' do
    expect(@race.candidates).to eq([])
  end

  it 'has a method #register_candidate! ' do 
    @candidate1 = Candidate.new({name: "Diana D", party: :democrat})
    @candidate2 = Candidate.new({name: "Roberto R", party: :republican})

    @candidate1= @race.register_candidate!({name: "Diana D", party: :democrat})
    @candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
    expect(@race.candidates).to eq([@candidate1,@candidate2])
  end
end