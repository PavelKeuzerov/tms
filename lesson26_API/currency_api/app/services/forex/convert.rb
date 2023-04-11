# frozen_string_literal: true

module Forex
  class ForexConvert
    URL = 'https://www.freeforexapi.com'
    ALL_CURRENCY = '/api/live'
    CURRENCY_OFFERS = '?pairs='
    SUPPORT_PAIRS = 'supportedPairs'
    ALL_RATES = 'rates'
    RATE_KEY = 'rate'

    class << self
      def call
        params_pair = [convert_params[:from], convert_params[:to]].join
        response = Curl.get(URL + ALL_CURRENCY + CURRENCY_OFFERS + params_pair)
        total = JSON(response.body)

        if response.response_code == 200
          rate = total.dig(ALL_RATES, params_pair, RATE_KEY)

          render json: convert_params.to_h.merge(amount_total: rate * convert_params[:amount].to_f)
        else
          render status: :service_unavailable, json: {}
        end
      end
    end

    private

    def convert_params
      params.permit(:from, :to, :amount)
    end
  end
end
