module EventsHelper
    def event_is_editable?(event)
    return true if event.pub_date > Date.today
    return false
  end
end
