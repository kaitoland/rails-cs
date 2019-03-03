class CsvsController < ApplicationController

  def index
  end

  def export
    binding.pry
  end

  def contact_params
    params.permit(:url)
  end
end
