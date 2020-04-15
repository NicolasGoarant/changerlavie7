class ArchivesController < ApplicationController
    def show
    @articles = Article.geocoded.order("publication DESC").where(status: "archive")
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
    end

    def index
    @articles = Article.geocoded.order("publication DESC").where(status: "invisible")
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
    end

end
