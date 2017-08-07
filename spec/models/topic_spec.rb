require 'rails_helper'

RSpec.describe Topic, type: :model do
   let(:topic) { create(:topic) }

   it { is_expected.to have_many(:posts) }
   it { is_expected.to validate_presence_of(:name) }
   it { is_expected.to validate_presence_of(:description) }
   it { is_expected.to validate_length_of(:name).is_at_least(5) }
   it { is_expected.to validate_length_of(:description).is_at_least(15) }
  #  it { is_expected.to have_many(:sponsored_posts) }

   describe "attributes" do
     it "has name, description attributes" do
       expect(topic).to have_attributes(name: topic.name, description: topic.description)

     it "is public by default" do
       expect(topic.public).to be(true)
     end
   end
end
end
