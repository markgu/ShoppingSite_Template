require 'spec_helper'

describe 'logon process' do

  subject {page}

  describe "logon" do
    before { visit new_user_path }

    describe "with invalid logon information" do
      before {click_button "Log on"}

      it { should have_selector('input.text.userId')}
      it { should have_selector('div.alert.alert-error') }
    end
  end



end