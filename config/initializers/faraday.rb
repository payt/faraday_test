# frozen_string_literal: true

require 'faraday'
require 'faraday/typhoeus'

Faraday.default_adapter = :typhoeus
