# frozen_string_literal: true

require 'way_of_working/cli'
require_relative 'github_audit/paths'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking::GithubAudit)
loader.setup

module WayOfWorking
  module GithubAudit
    class Error < StandardError; end
  end

  module SubCommands
    # # This reopens the "way_of_working exec" sub command
    # class Exec
    #   register(GithubAudit::Generators::Exec, 'github_audit', 'github_audit',
    # end

    # # This reopens the "way_of_working init" sub command
    # class Init
    #   register(GithubAudit::Generators::Init, 'github_audit', 'github_audit',
    # end

    # # This reopens the "way_of_working new" sub command
    # class New
    #   register(GithubAudit::Generators::New, 'github_audit', 'github_audit [NAME]',
    # end
  end
end
