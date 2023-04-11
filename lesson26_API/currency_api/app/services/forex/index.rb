# frozen_string_literal: true

module Forex
  class ForexIndex
    URL = 'https://www.freeforexapi.com'
    ALL_CURRENCY = '/api/live'
    SUPPORT_PAIRS = 'supportedPairs'

    class << self
      def call
        response = Curl.get(File.join(URL, ALL_CURRENCY))

        if response.response_code == 200
          pairs = JSON(response.body)[SUPPORT_PAIRS]

          render json: pairs.flat_map { |pair| [pair.first(3), pair.last(3)] }.uniq.sort
        else
          render status: :service_unavailable, json: {}
        end
      end
    end
  end
end
