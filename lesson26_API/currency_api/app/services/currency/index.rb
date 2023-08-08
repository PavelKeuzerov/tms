# frozen_string_literal: true

module Currency
  class Index

    URL = 'https://www.freeforexapi.com'
    ALL_CURRENCY = '/api/live'
    SUPPORT_PAIRS = 'supportedPairs'

    class << self
      def call
        response = Curl.get(File.join(URL, ALL_CURRENCY))
        raise StandardError('Sorry there was an error') if response.response_code != 200

        JSON(response.body)[SUPPORT_PAIRS].flat_map { |pair| [pair.first(3), pair.last(3)] }.uniq.sort
      end
    end
  end
end
