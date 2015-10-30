module Api

  module V1
    class Api::V1::FactsController < ApplicationController
      include Api::V1::Concerns::Response

        def get_fact
          category = ["hot", "new", "rising", "controversial"]
          time = ["hour", "day", "week", "month", "year", "all"]

          fact = RedditKit.links("todayilearned", options = {category: category.sample, time: time.sample, limit: 1000}).results.sample
          success_response({
            title: fact.title,
            url: fact.url
          })
        end

    end
  end
end
