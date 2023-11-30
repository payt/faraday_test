# frozen_string_literal: true

require 'faraday'

class GzipRequest
  def call
    puts connection.get('PublicHolidays/2023/AT').body
  end

  private

  def connection
    Faraday.new(url: 'https://date.nager.at/api/v3') do |conn|
      conn.request(:json)
      conn.response(:json)
      conn.use(:gzip)
    end
  end
end
