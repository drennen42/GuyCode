class PicturesController < ApplicationController
  def new
    @uploader = article.new.picture
    @uploader.success_action_redirect = new_article_url
  end
end