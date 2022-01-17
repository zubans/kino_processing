require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
  it "should correct hash" do
    expect(generate_password('123', '123')).to eq("bac132d23f0af93af88a251bc4a2841d28cee91e")
  end
end
