# frozen_string_literal: true

require_relative "everylog_wrapper/version"
require "dotenv"
require "json"
require "httparty"
require "pry"
Dotenv.load

module EverylogWrapper
  class Error < StandardError; end
  class Notification
    attr_accessor :title, :summary, :body, :tags, :link, :push

    def initialize(title:, summary:, body:, tags: [], link: "", push: false)
      @title = title
      @summary = summary
      @body = body
      @tags = tags
      @link = link
      @push = push
    end

    def send_notification
      api_key = ENV["EVERYLOG_KEY"]
      everylog_url = "https://api.everylog.io/api/v1/log-entries"
      body = {
        projectId: "menuclick24",
        title: @title,
        summary: @summary,
        body: @body,
        tags: @tags,
        link: @link,
        push: @push
      }
      response = HTTParty.post(everylog_url,
                               {
                                 body: body.to_json,
                                 headers: {
                                   "Content-Type": "application/json",
                                   "Authorization": "Bearer #{api_key}"
                                 }
                               })
      response
    end
  end
end

