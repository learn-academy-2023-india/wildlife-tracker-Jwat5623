# spec/models/animal_spec.rb

RSpec.describe Animal, type: :model do
  it { should validate_presence_of(:common_name) }
  it { should validate_presence_of(:scientific_binomial) }
  it { should validate_uniqueness_of(:common_name).case_insensitive }
end
