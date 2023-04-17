# frozen_string_literal: true

module Currency
  class RateSearch
    class AccessError < StandardError; end
    URL = 'https://www.freeforexapi.com'
    ALL_CURRENCY = '/api/live'
    CURRENCY_OFFERS = '?pairs='
    ALL_RATES = 'rates'
    RATE_KEY = 'rate'
    TIME = 1.hour.ago

    class << self
      def call(convert_params)
        if actual_rate?(convert_params)
          get_from_db_rate(convert_params)
        else
          rate = get_from_api_rate(convert_params)
          get_save_db(convert_params, rate: rate)
        end.rate
      end

      private

      def actual_rate?(convert_params)
        Forex.where(from: convert_params[:from], to: convert_params[:to]).where('created_at > ?', TIME).exists?
      end

      def get_from_db_rate(convert_params)
        Forex.where(from: convert_params[:from], to: convert_params[:to]).last
      end

      def get_from_api_rate(convert_params)
        params_pair = [convert_params[:from], convert_params[:to]].join
        response = Curl.get(URL + ALL_CURRENCY + CURRENCY_OFFERS + params_pair)
        total = JSON(response.body)
        raise AccessError('Sorry') if response.response_code != 200

        rate = total.dig(ALL_RATES, params_pair, RATE_KEY)
        JSON(rate)
      end

      def get_save_db(convert_params, rate:)
        Forex.create!(from: convert_params[:from], to: convert_params[:to], rate: rate)
      end

      def convert_params
        params.permit(:from, :to)
      end
    end
  end
end
