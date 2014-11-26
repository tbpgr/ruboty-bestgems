require 'ruboty/bestgems/actions/bestgems_helper'

module Ruboty
  module Bestgems
    module Actions
      class TotalRanking < Ruboty::Actions::Base
        include BestgemsHelper

        def call
          message.reply(call_api('total_ranking'))
        end
      end
    end
  end
end
