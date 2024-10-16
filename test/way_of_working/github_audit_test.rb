# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  class GithubAuditTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::WayOfWorking::GithubAudit::VERSION
    end
  end
end
