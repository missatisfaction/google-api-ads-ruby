# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-08-09 15:51:10.

require 'ads_common/savon_service'
require 'dfp_api/v201605/package_service_registry'

module DfpApi; module V201605; module PackageService
  class PackageService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201605'
      super(config, endpoint, namespace, :v201605)
    end

    def create_packages(*args, &block)
      return execute_action('create_packages', args, &block)
    end

    def create_packages_to_xml(*args)
      return get_soap_xml('create_packages', args)
    end

    def get_packages_by_statement(*args, &block)
      return execute_action('get_packages_by_statement', args, &block)
    end

    def get_packages_by_statement_to_xml(*args)
      return get_soap_xml('get_packages_by_statement', args)
    end

    def perform_package_action(*args, &block)
      return execute_action('perform_package_action', args, &block)
    end

    def perform_package_action_to_xml(*args)
      return get_soap_xml('perform_package_action', args)
    end

    def update_packages(*args, &block)
      return execute_action('update_packages', args, &block)
    end

    def update_packages_to_xml(*args)
      return get_soap_xml('update_packages', args)
    end

    private

    def get_service_registry()
      return PackageServiceRegistry
    end

    def get_module()
      return DfpApi::V201605::PackageService
    end
  end
end; end; end