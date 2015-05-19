require('spec_helper')

describe(Level) do
  it { should belong_to(:tamas) }
  it { should validate_presence_of(:level)}
end
