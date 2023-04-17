# frozen_string_literal: true

module Currency
  class Convert
    URL = 'https://www.freeforexapi.com'
    ALL_CURRENCY = '/api/live'
    CURRENCY_OFFERS = '?pairs='
    ALL_RATES = 'rates'
    RATE_KEY = 'rate'

    class << self
      def call(convert_params)
        rate = RateSearch.call(convert_params).to_f
        convert_params.to_h.merge(rate:, amount_total: rate * convert_params[:amount].to_f)
      end
    end

    private

    def convert_params
      params.permit(:from, :to, :amount)
    end
  end
end
