require 'date'
class BdayCalc
  def initialize(day,month,year)
    @day = day
    @month = month
    @year = year
    @user_bday = Date.new(year,month,day)
  end

  def calc_age
    (Date.today - @user_bday).to_i/365
  end
  
  def calc_bday
    (Date.today.yday - @user_bday.yday)+1
  end

end