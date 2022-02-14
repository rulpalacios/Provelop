# frozen_string_literal: true

module EventHelper
  def show_reservation(user, event)
    return false unless user
    return true unless user.purchases.where(event_id: event.id).empty?

    false
  end

  def show_status(status)
    case status
    when 'draft'
      tag.span(class: 'px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800') do
        t(status)
      end
    when 'review'
      tag.span(class: 'px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-yellow-100 text-yellow-800') do
        t(status)
      end
    else
      tag.span(class: 'px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800') do
        t(status)
      end
    end
  end

  def show_action_links(event)
    return action_links(event) if event.draft?
  end

  def show_review_link(event)
    return review_link(event) if event.draft?
  end

  def show_admin_links(event)
    draft_link(event)
    publish_link(event)
  end

  def review_link(event)
    link_to 'Enviar a revisión', maker_event_reviews_path(event_id: event), class: 'text-indigo-600 hover:text-indigo-900', method: :post
  end

  def action_links(event)
    link_to 'Editar', edit_maker_event_path(event), class: 'text-gray-400 hover:text-indigo-600'
  end

  def draft_link(event)
    link_to 'Convertir en borrador', maker_event_returns_path(event), class: 'text-gray-400 hover:text-indigo-600'
  end

  def publish_link(event)
    return link_to 'Publicar', maker_event_publications_path(event), class: 'text-indigo-600 hover:text-indigo-900 ml-3' if event.review?
  end
end
