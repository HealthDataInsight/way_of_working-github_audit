# frozen_string_literal: true

require 'way_of_working/cli'
require_relative 'github_audit/paths'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking)
loader.setup

module WayOfWorking
  module GithubAudit
    class Error < StandardError; end
  end

  module SubCommands
    # This reopens the "way_of_working exec" sub command
    class Exec
      register(GithubAudit::Generators::Exec, 'github_audit', 'github_audit',
               <<~LONGDESC)
                 Description:
                     This runs the GitHub audit

                 Example:
                     way_of_working exec github_audit
               LONGDESC
    end

    # # This reopens the "way_of_working init" sub command
    # class Init
    #   register(GithubAudit::Generators::Init, 'github_audit', 'github_audit',
    #            <<~LONGDESC)
    #              Description:
    #                  Installs GitHub audit documentation files into the project

    #              Example:
    #                  way_of_working init github_audit

    #                  This will create:
    #                      docs/way_of_working/github-audit/TODO
    #            LONGDESC
    # end
  end
end
