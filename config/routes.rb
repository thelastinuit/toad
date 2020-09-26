Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope module: :v1, constraints: ApiVersion.new('v1', true), format: :json do
    resources :mushrooms, only: :index
  end
end
