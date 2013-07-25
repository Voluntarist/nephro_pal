require 'spec_helper'

  describe AssignmentsController do
    describe 'GET #index' do
      it 'renders a template' do
        get :index
        response.should render_template :index
      end
    end

    describe 'GET #new' do
      before {
        get :new
      }

      it 'renders the :new template' do
        response.should render_template :new
      end

      it 'creates a new biopsy' do
        assigns(:assignment).should_not be_nil
      end
    end
  end