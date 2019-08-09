module API
  module Article
    version 'v1', using: :header, vendor: 'article'
    format :json
    helpers do
      def newly_articles(articles_params)
        page = articles_params[:page]
        page ||= 1
        Article.order(:created_at).page(page)
      end
    end
    resource :articles do
      desc 'Return 25 newly_articles sorted by created at.'
      get '/' do
        present newly_articles, with API::Entities::Article
      end
    end
  end
end
