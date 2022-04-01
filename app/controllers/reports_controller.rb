class ReportsController < ApplicationController
  def create
    report = Report.new()
    today = DateTime.now
    movies = Movie.where(time_slot: today.midnight..today.end_of_day)
    report_date = Date.parse(today.to_s)
    report.report_name = "Report for #{report_date}"
    full_report = [report, movies]
    if report.save
      movies.each do |movie|
        movie.report_id = report.id
        movie.save
      end
      render json: full_report
    else
      render json: { errors: report.errors.full_messages }
    end
  end
end
