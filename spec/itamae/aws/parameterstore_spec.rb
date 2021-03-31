# frozen_string_literal: true

RSpec.describe Itamae::Aws::Parameterstore::Store do
  let(:instance) { described_class.new }
  let(:client) { Aws::SSM::Client.new(stub_responses: true) }
  let(:response) { client.stub_data(:get_parameter) }

  before do
    instance.instance_variable_set(:@client, client)
  end

  it "can get parameter value from parameter name" do
    expect(instance[response.parameter.name]).to eq(response.parameter.value)
  end
end
