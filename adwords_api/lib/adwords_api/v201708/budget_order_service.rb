# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.14.2 on 2017-08-09 17:59:20.

require 'ads_common/savon_service'
require 'adwords_api/v201708/budget_order_service_registry'

module AdwordsApi; module V201708; module BudgetOrderService
  class BudgetOrderService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/billing/v201708'
      super(config, endpoint, namespace, :v201708)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def get_billing_accounts(*args, &block)
      return execute_action('get_billing_accounts', args, &block)
    end

    def get_billing_accounts_to_xml(*args)
      return get_soap_xml('get_billing_accounts', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return BudgetOrderServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201708::BudgetOrderService
    end
  end
end; end; end