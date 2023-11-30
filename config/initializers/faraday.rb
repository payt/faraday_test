# frozen_string_literal: true

require 'faraday'
require 'typhoeus/adapters/faraday'

Faraday.default_adapter = :typhoeus
