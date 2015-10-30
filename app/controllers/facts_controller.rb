class FactsController < ApplicationController
  include Concerns::Response

    def get_fact
      fact = RedditKit.links("todayilearned", options = {
        category: ["hot", "new", "rising", "controversial"].sample,
        time: "month", limit: 100
      }).results.sample

      success_response({
        title: fact.title,
        url: fact.url
      })
    end

end

