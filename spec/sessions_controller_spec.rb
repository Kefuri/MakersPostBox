require 'rails_helper'
RSpec.describe SessionsController do
  describe '#create' do
    it 'should start a session' do
      subject.create
      expect(subject.current_session).to be_truthy
    end
  end
end
