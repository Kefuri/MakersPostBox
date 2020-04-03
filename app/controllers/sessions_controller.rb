class SessionsController < ApplicationController
  attr_reader :current_session

  def new
  end

  def create
    @current_session = true
  end

  def destroy
  end
end
