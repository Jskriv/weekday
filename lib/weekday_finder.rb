class String
  define_method(:weekday) do
    numerical_date_array = []
    date_array = self.split("/")
    date_array = date_array.rotate(2) #["2015", "01", "30"]
    date_array.each() do |field|
      numerical_field = field.to_i()
      numerical_date_array.push(numerical_field)
    end
    numerical_date_array.join(", ")
    year = numerical_date_array.at(0)
    month = numerical_date_array.at(1)
    day = numerical_date_array.at(2)
    day_of_week = Time.new(year, month, day) #2017-07-06
      day_of_week.strftime("%A") #Thursday
  end
end
