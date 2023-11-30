# frozen_string_literal: true

require 'faraday'
require 'faraday/gzip'

class GzipRequest
  def call
    puts connection.get('PublicHolidays/2023/AT')
  end

  private

  def connection
    Faraday.new(url: 'https://date.nager.at/api/v3') do |conn|
      conn.request(:json)
      conn.response(:json)
      conn.request(:gzip)
    end
  end
end
