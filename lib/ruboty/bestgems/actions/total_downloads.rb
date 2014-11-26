require 'ruboty/bestgems/actions/bestgems_helper'

module Ruboty
  module Bestgems
    module Actions
      class TotalDownloads < Ruboty::Actions::Base
        include BestgemsHelper

        def call
          message.reply(call_api('total_downloads'))
        end
      end
    end
  end
end
