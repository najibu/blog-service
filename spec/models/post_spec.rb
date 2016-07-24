RSpec.describe Post, type: :model do
  it { should validate_presence_of(:content) }
end

RSpec.describe Post, type: :model do
  it { should validate_length_of(:content).is_at_most(150) }
end
