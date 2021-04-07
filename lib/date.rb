# frozen_string_literal: true

#date class
class Date
  attr_reader :current_date
  def current_date
    @date = Time.now.strftime('%d/%m/%Y')
  end
end
