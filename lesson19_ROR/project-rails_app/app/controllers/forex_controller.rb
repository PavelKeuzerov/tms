class ForexController < ApplicationController
  URL = 'https://www.freeforexapi.com'.freeze
  ALL_CURRENCY = '/api/live'.freeze
  CURRENCY_OFFERS = '?pairs='.freeze
  SUPPORT_PAIRS = 'supportedPairs'.freeze
  ALL_RATES = 'rates'.freeze
  RATE_KEY = 'rate'.freeze

  def index
    response = Curl.get(File.join(URL, ALL_CURRENCY))
    @forex = []

    if response.response_code == 200
      pairs = JSON(response.body)[SUPPORT_PAIRS]

      render json: pairs.flat_map { |pair| [pair.first(3), pair.last(3)] }.uniq.sort
    else
      render status: :service_unavailable, json: {}
    end
  end

  def convert
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

  private

  def convert_params
    params.permit(:from, :to, :amount)
  end
end
