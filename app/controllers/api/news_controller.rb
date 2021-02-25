class Api::NewsController < ApplicationController
  def index
    news_key = Rails.application.credentials.news
    response = RestClient.get("http://newsapi.org/v2/everything?q=crypto&from=#{params['date']}&sortBy=publishedAt&apiKey=#{news_key}")
    res_body = JSON.parse(response.body)
    res_filtered = res_body['articles'].map |articles| do
      {
        title: ,
        urlToImage:,
        url:,
        description:,
        date:,
      }
    end
  end
end
