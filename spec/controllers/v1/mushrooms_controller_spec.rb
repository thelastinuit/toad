require 'rails_helper'

describe V1::MushroomsController, type: :controller do
  before do
    request.headers.merge!({ 'Accept' => 'application/vnd.toad.v1+json' })
  end

  context 'when a list of mushrooms is requested' do
    before do
      create_list :mushroom, 27
      get :index, params: { mushroom: { ringType: '' } }, format: :json
    end

    it 'responds with a 200 status' do
      expect(response.status).to eq 200
    end

    it 'responds with a serialized mushrooms' do
      expect(json).to have_key 'mushrooms'
    end

    it 'responds with a pagy metadata ' do
      expect(json).to have_key 'pagy'
      expect(pagy_metadata['count']).to eq 27
      expect(pagy_metadata['page']).to eq 1
      expect(pagy_metadata['next']).to eq 2
      expect(pagy_metadata['next']).to eq 2
    end
  end

  context 'when a next page of list of mushrooms is requested' do
    before do
      create_list :mushroom, 27
      get :index, params: { page: 2, mushroom: { capShape: '' } }, format: :json
    end

    it 'responds with a 200 status' do
      expect(response.status).to eq 200
    end

    it 'responds with a serialized mushrooms' do
      expect(json).to have_key 'mushrooms'
    end

    it 'responds with a pagy metadata ' do
      expect(json).to have_key 'pagy'
      expect(pagy_metadata['count']).to eq 27
      expect(pagy_metadata['page']).to eq 2
      expect(pagy_metadata['next']).to be_nil
      expect(pagy_metadata['next']).to be_nil
    end
  end

  context 'when a list of bell-cap-shaped mushrooms is requested' do
    before do
      create_list :mushroom, 27
      create_list :bell_cap_shaped_mushroom, 10
      get :index, params: { mushroom: { capShape: 'bell' } }, format: :json
    end

    it 'responds with a 200 status' do
      expect(response.status).to eq 200
    end

    it 'responds with a serialized mushrooms' do
      expect(json).to have_key 'mushrooms'
    end

    it 'responds with a pagy metadata ' do
      expect(json).to have_key 'pagy'
      expect(pagy_metadata['count']).to eq Mushroom.bell_cap_shape.count
      expect(pagy_metadata['page']).to eq 1
      expect(pagy_metadata['next']).to be_nil
      expect(pagy_metadata['next']).to be_nil
    end
  end
end
