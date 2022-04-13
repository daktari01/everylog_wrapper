# frozen_string_literal: true

require_relative "everylog_wrapper/version"
require "json"
require "httparty"
require "pry"

class EverylogWrapper
  def self.send_notification(project_id:, title:, summary:, body:, tags: [], link: "", push: false)
    api_key = ENV["EVERYLOG_KEY"]
    everylog_url = "https://api.everylog.io/api/v1/log-entries"
    body = {
      project_id: project_id,
      title: title,
      summary: summary,
      body: body,
      tags: tags,
      link: link,
      push: push
    }
    HTTParty.post(everylog_url,
                  {
                    body: body.to_json,
                    headers: {
                      "Content-Type": "application/json",
                      "Authorization": "Bearer #{api_key}"
                    }
                  })
  end
end
