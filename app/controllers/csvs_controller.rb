class CsvsController < ApplicationController

  def index
  end

  def export
    Csv.export
  end

  def show
    redirect_to csvs_path
  end

  def csv_params
    params.permit(:url)
  end
end
