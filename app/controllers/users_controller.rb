class UsersController < ApplicationController

  def stats
    @user = current_user

    @current_points = 0
    @user.quiz_results.each do |result|
      points = result.score * 100
      return @current_score += points if result.quiz.type == "campaign"
    end

    @current_possible_points = 0
    @user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      return @current_possible_points += possible_points if result.quiz.type == "campaign"
    end

    @remaining_points = 3600 - @current_possible_points
    
    
    # make a score for each subject area in a variable
    # interate through quiz results
    # find the subject_area of the quix_result
    # add the score from that quiz to that variable
    # find the score for each subject area
    # put subject areas in order of goodness
    # percentage incorrect
    # percentage correct
    # percentage complete
  end

  def rewards
    @user = current_user
    @current_points = 0
    @user.quiz_results.each do |result|
      points = result.score * 100
      return @current_score += points
    end
    @current_possible_points = 0
    @user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      return @current_possible_points += possible_points
    end
    @remaining_points = 3600 - @current_possible_points
  end

  def home
  end
end
