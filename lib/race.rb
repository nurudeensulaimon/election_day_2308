class Race
attr_accessor :office
attr_reader   :candidates
  def initialize(office)
    @office = office 
    @candidates = []
  end

  def register_candidate!(candidate_info)
     @name = candidate_info[:name]
     @party = candidate_info[:party]
     candidate = Candidate.new(candidate_info)
     @candidates << candidate
     #binding.pry
     candidate
  end 
end