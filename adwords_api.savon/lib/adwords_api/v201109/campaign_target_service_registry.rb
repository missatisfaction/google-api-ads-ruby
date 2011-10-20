#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:38:50.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module CampaignTargetService
  class CampaignTargetServiceRegistry
    CAMPAIGNTARGETSERVICE_METHODS = {:get=>{:input=>[{:type=>"CampaignTargetSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"CampaignTargetPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"CampaignTargetOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"CampaignTargetReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    CAMPAIGNTARGETSERVICE_TYPES = {:AdScheduleTargetList=>{:fields=>[{:type=>"AdScheduleTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :TargetList=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:target_list_type}], :abstract=>true}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :CampaignTargetSelector=>{:fields=>[{:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:campaign_ids}]}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:service_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:method_name}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :CampaignTargetPage=>{:fields=>[{:type=>"TargetList", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}, :CampaignTargetOperation=>{:fields=>[{:type=>"TargetList", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :CampaignTargetReturnValue=>{:fields=>[{:type=>"TargetList", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :AdScheduleTarget=>{:fields=>[{:type=>"DayOfWeek", :max_occurs=>1, :min_occurs=>0, :name=>:day_of_week}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_hour}, {:type=>"MinuteOfHour", :max_occurs=>1, :min_occurs=>0, :name=>:start_minute}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:end_hour}, {:type=>"MinuteOfHour", :max_occurs=>1, :min_occurs=>0, :name=>:end_minute}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:bid_multiplier}], :base=>"Target"}, :Target=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:target_type}], :abstract=>true}}
    CAMPAIGNTARGETSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNTARGETSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNTARGETSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNTARGETSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end