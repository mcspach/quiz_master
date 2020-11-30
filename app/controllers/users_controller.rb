class UsersController < ApplicationController
  def stats

    # make a score for each subject area in a variable
    # pre_inspection_results = []
    # post_inspection_results = []
    # distracted_driving_results = []
    # proper_procedure_results = []
    # interate through quiz results
    # QuizResult.all.each do |result|
    #   # make a variable for percentage correct
    #   correct_percentage = (result.score / result.possible_score) * 10
    #   # find the subject_area of the quiz_result
    #   # add the score from that quiz to that variable
    #   if result.quiz.subject_area == "Pre-Inspection"
    #     pre_inspection_results << correct_percentage
    #   elsif result.quiz.subject_area == "Post-Inspection"
    #     post_inspection_results << correct_percentage
    #   elsif result.quiz.subject_area == "Distracted Driving"
    #     distracted_driving_results << correct_percentage
    #   else 
    #     # result.quiz.subject_area == "Proper Procedure"
    #     proper_procedure_results << correct_percentage
    #   end
    # end
    # find the score for each subject area
    # @pre_inspection_score = (pre_inspection_results.sum / pre_inspection_results.size)
    # @post_inspection_score = (post_inspection_results.sum / post_inspection_results.size)
    # @distracted_driving_score = (distracted_driving_results.sum / distracted_driving_results.size)
    # @proper_procedure_score = (proper_procedure_results.sum / proper_procedure_results.size)
    # # put subject areas in order of goodness
    # stats_array = [@pre_inspection_score, @post_inspection_score, @distracted_driving_score, @proper_procedure_score].sort

    # @best_subject = stats_array.last
    # @worst_subject = stats_array.first

    # percentage correct
    percent_array = []
    QuizResult.joins(:quiz).where("quizzes.quiz_type = 'refresher'").each do |result|
      percent_array << (result.score * 100 / result.possible_score)
    end
    @percent_correct = ( percent_array.sum / percent_array.size )

    # percentage complete
    @percent_complete = ( QuizResult.where(user: current_user).size * 100 / CompanyQuiz.all.size )
  end

  def rewards
    @user = current_user
    @current_points = 0
    @user.quiz_results.each do |result|
      points = result.score * 100
      @current_points += points if result.quiz.quiz_type == 'refresher'
    end
    @current_possible_points = 0
    @user.quiz_results.each do |possible|
      possible_points = possible.possible_score * 100
      @current_possible_points += possible_points if possible.quiz.quiz_type == 'refresher'
    end

    @remaining_points = (3600 - @current_points)
    @div_points = @remaining_points * 100 / 3600
  end

  def home
    @user = current_user
    @quiz_id = CompanyQuiz.joins(:quiz).where("quizzes.quiz_type = 'refresher'").last.quiz.id
  end
end
