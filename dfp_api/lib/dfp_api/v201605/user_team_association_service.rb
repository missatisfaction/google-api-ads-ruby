# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-08-09 15:51:28.

require 'ads_common/savon_service'
require 'dfp_api/v201605/user_team_association_service_registry'

module DfpApi; module V201605; module UserTeamAssociationService
  class UserTeamAssociationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201605'
      super(config, endpoint, namespace, :v201605)
    end

    def create_user_team_associations(*args, &block)
      return execute_action('create_user_team_associations', args, &block)
    end

    def create_user_team_associations_to_xml(*args)
      return get_soap_xml('create_user_team_associations', args)
    end

    def get_user_team_associations_by_statement(*args, &block)
      return execute_action('get_user_team_associations_by_statement', args, &block)
    end

    def get_user_team_associations_by_statement_to_xml(*args)
      return get_soap_xml('get_user_team_associations_by_statement', args)
    end

    def perform_user_team_association_action(*args, &block)
      return execute_action('perform_user_team_association_action', args, &block)
    end

    def perform_user_team_association_action_to_xml(*args)
      return get_soap_xml('perform_user_team_association_action', args)
    end

    def update_user_team_associations(*args, &block)
      return execute_action('update_user_team_associations', args, &block)
    end

    def update_user_team_associations_to_xml(*args)
      return get_soap_xml('update_user_team_associations', args)
    end

    private

    def get_service_registry()
      return UserTeamAssociationServiceRegistry
    end

    def get_module()
      return DfpApi::V201605::UserTeamAssociationService
    end
  end
end; end; end