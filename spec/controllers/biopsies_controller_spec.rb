require 'spec_helper'

  describe BiopsiesController do
    describe 'GET #new' do
      before {
        get :new
      }

      it 'renders the :new template' do
        response.should render_template :new
      end

      it 'creates a new biopsy' do
        assigns(:biopsy).should_not be_nil
      end
    end

    describe 'POST #create' do
      it 'creates a biopsy' do
        expect {
            post :create, biopsy: attributes_for(:biopsy)
          }.to change(Biopsy, :count).by(1)
      end

      it 'redirects to the Assignment#new action' do
        post :create, biopsy: attributes_for(:biopsy)
        response.should redirect_to new_assignment_path()
      end
    end
  end