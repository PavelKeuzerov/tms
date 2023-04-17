# frozen_string_literal: true

class ForexController < ApplicationController
  URL = 'https://www.freeforexapi.com'
  ALL_CURRENCY = '/api/live'
  CURRENCY_OFFERS = '?pairs='
  SUPPORT_PAIRS = 'supportedPairs'
  ALL_RATES = 'rates'
  RATE_KEY = 'rate'

  def index
    @currencies_pair = Currency::Index.call
  end

  def convert
    @currencies_convert = Currency::Convert.call(convert_params)
  end

  private

  def convert_params
    params.permit(:from, :to, :rate, :amount)
  end
end
