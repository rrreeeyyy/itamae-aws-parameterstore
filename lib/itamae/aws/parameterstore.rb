# frozen_string_literal: true

require "aws-sdk-ssm"
require_relative "parameterstore/version"

module Itamae
  module Aws
    class Parameterstore
      class Error < StandardError; end

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
