# frozen_string_literal: true

module EventHelper
  def show_reservation(user, event)
    return true unless user.purchases.where(event_id: event.id).empty?

    false
  end
end
