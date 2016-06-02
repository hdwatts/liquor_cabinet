class UserDecorator < SimpleDelegator

  def full_name
   full_name = first_name + " " + last_name
   full_name.titleize
  end

end