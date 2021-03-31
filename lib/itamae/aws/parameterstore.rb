# frozen_string_literal: true

require "aws-sdk-ssm"
require_relative "parameterstore/version"
require_relative "parameterstore/store"

module Itamae
  module Aws
    def self.Parameterstore
      Itamae::Aws::Parameterstore::Store.new
    end

    module Parameterstore
    end
  end
end
