require 'parity/backup'
require 'parity/environment'

module Parity
  class Staging < Environment
    def initialize(subcommands)
      @environment = 'staging'
      super(subcommands)
    end

    private

    def restore
      Backup.new(arguments.last, 'staging').restore
    end
  end
end
