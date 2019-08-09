module Article
class Data < Grape::API
  helpers do
    def latest_articles(articles_param)
      page = articles_param[:page]
      page ||= 1
      Article.order(:created_at).page(page)
    end

    def events_articles(events_params)
      page = articles_param[:page]
      page ||= 1
      Article.order(:created_at).page(page)
    end
  end
  resource :article do
    desc "load latest article"
    get do
      present latest_articles(params), with: API::Entities::Article
    end

    get '/events' do
      present events_articles(params), with: API::Entities::Article
    end
  end
end
