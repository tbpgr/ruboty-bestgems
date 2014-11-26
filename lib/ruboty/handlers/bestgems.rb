require 'ruboty/bestgems/actions/total_downloads'
require 'ruboty/bestgems/actions/daily_downloads'
require 'ruboty/bestgems/actions/total_ranking'
require 'ruboty/bestgems/actions/daily_ranking'

module Ruboty
  module Handlers
    class Bestgems < Base
      on /bestgems total_downloads (?<gem_name>.+)\z/, name: 'total_downloads', description: 'latest total_download count'
      on /bestgems daily_downloads (?<gem_name>.+)\z/, name: 'daily_downloads', description: 'latest daily_download count'
      on /bestgems total_ranking (?<gem_name>.+)\z/, name: 'total_ranking', description: 'latest total_ranking'
      on /bestgems daily_ranking (?<gem_name>.+)\z/, name: 'daily_ranking', description: 'latest daily_ranking'

      def total_downloads(message)
        Ruboty::Bestgems::Actions::TotalDownloads.new(message).call
      end

      def daily_downloads(message)
        Ruboty::Bestgems::Actions::DailyDownloads.new(message).call
      end

      def total_ranking(message)
        Ruboty::Bestgems::Actions::TotalRanking.new(message).call
      end

      def daily_ranking(message)
        Ruboty::Bestgems::Actions::DailyRanking.new(message).call
      end
    end
  end
end
