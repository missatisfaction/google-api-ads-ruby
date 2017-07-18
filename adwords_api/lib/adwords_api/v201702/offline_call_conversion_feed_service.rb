# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.6 on 2017-02-28 08:24:29.

require 'ads_common/savon_service'
require 'adwords_api/v201702/offline_call_conversion_feed_service_registry'

module AdwordsApi; module V201702; module OfflineCallConversionFeedService
  class OfflineCallConversionFeedService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201702'
      super(config, endpoint, namespace, :v201702)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return OfflineCallConversionFeedServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201702::OfflineCallConversionFeedService
    end
  end
end; end; end
