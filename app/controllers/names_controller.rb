class NamesController < ApplicationController
  def what_is_your_name
    name = params[:name]
    if name.first == "a"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    end
  end
end
