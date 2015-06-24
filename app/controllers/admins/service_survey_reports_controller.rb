class Admins::ServiceSurveyReportsController < ApplicationController
  layout 'admins'

  def create
    @service_survey_report = ServiceSurveyReport.new(service_survey_report_params)
    if @service_survey_report.save
      redirect_to  service_survey_report_path(@service_survey_report), notice: t('flash.service_survey.created')
    else
      flash[:error] = t('service_report.no_reports')
      redirect_to  admins_service_surveys_path
    end
  end

  private

  def service_survey_report_params
    params.require(:service_survey_report).permit(:service_survey_id)
  end

end
