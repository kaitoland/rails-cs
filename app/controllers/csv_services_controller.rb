require 'csv'

class CsvServicesController < ApplicationController
  def index
  end

  def export
    @staffs = Staff.all
    @fname=params[:filename]+".csv"
    respond_to do |format|
      format.html do
        #html用の処理を書く
      end
      csv_data= CSV.generate do |csv|
        csv_column_names = %w(Name Email)
        csv << csv_column_names
        @staffs.each do |staff|
          csv_column_values = [
            staff.name,
            staff.email
          ]
          csv << csv_column_values
        end
      end
      format.csv do
        send_data csv_data, filename: @fname, type: :csv
      end
    end
  end

  def show
    redirect_to csvs_path
  end

  def csv_params
    params.permit(:url)
  end
end
