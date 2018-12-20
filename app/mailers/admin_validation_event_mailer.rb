class AdminValidationEventMailer < ApplicationMailer

    def contact(user_email, title_event, city, country, meeting_point, ending_date, number_of_places, price, starting_date, starting_time)

    @title_event = title_event
    @city = city
    @country = country
    @meeting_point = meeting_point
    @ending_date = ending_date
    @number_of_places = number_of_places
    @price = price
    @starting_date = starting_date
    @starting_time = starting_time

    mail(to: user_email, subject: "Event create!")
  end

  def contact_admin(admin_email, user_email, title_event, city, country, meeting_point, ending_date, number_of_places, price, starting_date, starting_time, description_event)

    @user_email = user_email

    @title_event = title_event
    @city = city
    @country = country
    @meeting_point = meeting_point
    @ending_date = ending_date
    @number_of_places = number_of_places
    @price = price
    @starting_date = starting_date
    @starting_time = starting_time
    @description_event = description_event

    mail(to: admin_email, subject: "Event create!")
  end
end
