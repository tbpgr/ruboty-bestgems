require 'ruboty/bestgems/actions/bestgems_helper'

module Ruboty
  module Bestgems
    module Actions
      class DailyRanking < Ruboty::Actions::Base
        include BestgemsHelper

        def call
          message.reply(call_api('daily_ranking'))
        end
      end
    end
  end
end
