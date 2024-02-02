# spec/models/sighting_spec.rb

RSpec.describe Sighting, type: :model do
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:date) }
end
