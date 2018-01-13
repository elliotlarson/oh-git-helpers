# frozen_string_literal: true

require('thor')

module Ogel
  # List remote branches and checkout tracking version
  class GertCli < Thor
    default_task(:call)

    desc(:call, 'List collection of remote branches to checkout with tracking')

    def call
      Gert.call(console: Ogel::Console.new)
    end
  end
end
