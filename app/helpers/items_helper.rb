module ItemsHelper
  def time_left(item)
    from_time = Time.now
    distance_of_time_in_words(item.created_at, Time.now - 7.days, include_seconds: true)
  end

end
