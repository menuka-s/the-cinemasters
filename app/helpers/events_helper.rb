module EventsHelper
  def event_is_editable?(event)
    return true if event && event.pub_date > Date.today
    return false
  end

  def event_is_publishible?(event)
    return true if event && event.pub_date <= Date.today
    return false
  end
end
