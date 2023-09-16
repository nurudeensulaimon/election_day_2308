require './lib/candidate'
require 'rspec'

RSpec.describe Candidate do 
  before(:each) do 
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  it 'exists' do 
    expect(@diana).to be_a_instance_of(Candidate)
  end

  it 'has attributes' do 
    expect(@diana.name).to eq("Diana D")
    expect(@diana.party).to eq(@diana.party)
    expect(@diana.votes).to eq(0)
  end
  
  it 'can add votes' do 

    @diana.vote_for!
    @diana.vote_for!
    @diana.vote_for!

    expect(@diana.votes).to eq(3)
  end

  it 'can add more votes' do

   @diana.vote_for!
   @diana.vote_for!
   @diana.vote_for!
   @diana.vote_for!

   expect(@diana.votes).to eq(4)
   
  end 
end