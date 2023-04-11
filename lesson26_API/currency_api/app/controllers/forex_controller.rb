# frozen_string_literal: true

class ForexController < ApplicationController
  include Forex

  URL = 'https://www.freeforexapi.com'
  ALL_CURRENCY = '/api/live'
  CURRENCY_OFFERS = '?pairs='
  SUPPORT_PAIRS = 'supportedPairs'
  ALL_RATES = 'rates'
  RATE_KEY = 'rate'

  def index
    @currencies_pair = ForexIndex.call
  end

  # def index
  #   response = Curl.get(File.join(URL, ALL_CURRENCY))

  #   if response.response_code == 200
  #     pairs = JSON(response.body)[SUPPORT_PAIRS]

  #     render json: pairs.flat_map { |pair| [pair.first(3), pair.last(3)] }.uniq.sort
  #   else
  #     render status: :service_unavailable, json: {}
  #   end
  # end

  # def convert
  #   @currencies_convert = ForexConvert.call
  # end

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

  # def get_save_db_rate
  #   Forex.create(from: convert_params[:from], to: convert_params[:to], rate: rate)
  # end

  # def get_from_db_rate
  #   Forex.where(from: convert_params[:from], to: convert_params[:to], rate: rate).order(created_at: :desk).first
  # end

  # def get_from_api_rate
  #   params_pair = params[:pairs]
  #   response = Curl.get(URL + ALL_CURRENCY + CURRENCY_OFFERS + params_pair)
  #   total = JSON(response.body)
  #   raise StandardError('Sorry') if response.response_code != 200

  #   rate = total.dig(ALL_RATES, params_pair, RATE_KEY)
  # end

  # def currency_db_rate
  #   Forex.where(from: convert_params[:from], to: convert_params[:to]).where('created_at > ?', 1.hour.ago).first
  # end
end

# def convert
#   params_pair = params[:pairs]
#   amount = params[:amount]
#   response = Curl.get(URL + ALL_CURRENCY + CURRENCY_OFFERS + params_pair)
#   total = JSON(response.body)

#   if response.response_code == 200
#     rate = total.dig(ALL_RATES, params_pair, RATE_KEY)

#     render json: rate * amount.to_f
#   else
#     render status: :service_unavailable, json: {}
#   end
# end
