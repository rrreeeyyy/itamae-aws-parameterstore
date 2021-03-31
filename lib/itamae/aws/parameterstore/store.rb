# frozen_string_literal: true

require "aws-sdk-ssm"

module Itamae
  module Aws
    module Parameterstore
      class Store
        def initialize
          @client = ::Aws::SSM::Client.new
        end

        def [](name)
          get_parameter_value(name)
        end

        def get_parameter_value(name)
          @client.get_parameter({
            name: name.to_s,
            with_decryption: true,
          }).parameter.value
        end
      end
    end
  end
end
