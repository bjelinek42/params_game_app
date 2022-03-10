class NamesController < ApplicationController
  def what_is_your_name
    name = params[:name]
    if name.first == "a"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    end
  end

  def segment
    render json: {message: "You live in #{params[:city]}, #{params[:state]}."}
  end

  def guess_number
    user_guess = params[:guess].to_i
    answer = 32
    if user_guess > answer
      render json: the_message = "Your guess is too high"
    elsif user_guess < answer
      render json: the_message = "Your guess is too low"
    elsif user_guess == answer
      render json: the_message = "CONGRATULATIONS!!!!!!!"
    end
  end

  def validate_login
    username = params[:username]
    password = params[:password]
    if username == "hugh" && password == "swordfish"
      render json: "valid credentials"
    else
      render json: "invalid credentials"
    end
  end
end
