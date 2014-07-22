$ ->
  $('#player-table').tablesorter
    headers:
      sortInitialOrder: 'desc'
      0:
        sorter: false
  return

$(document).on 'change', '#positions_filter', (e) ->
  position = e.currentTarget.value

  if position is ''
    $.each $('#player-table tbody tr'), ->
      $(this).css 'display', ''
      return

  else
    $('#player-table tbody tr').each ->
      $positionColumn = $(this).find('.position')
      if $positionColumn.text() isnt position
        $(this).css 'display', 'none'
      else
        $(this).css 'display', ''
      return

  return
