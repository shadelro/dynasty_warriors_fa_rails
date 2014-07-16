$(function () {
  $("#player-table").tablesorter(
    {
      headers: {
        sortInitialOrder: 'desc',
        0: {sorter: false}
      }
    });
});

$(document).on('change', '#positions_filter', function (e) {
  var position = e.currentTarget.value;

  if(position === "") {
    $.each($('#player-table tbody tr'), function () {
      $(this).css('display', '');
    });
  } else {
    $('#player-table tbody tr').each(function() {
      $positionColumn = $(this).find('.position');

      if($positionColumn.text() !== position) {
        $(this).css('display', 'none');
      }
      else {
        $(this).css('display', '');
      }
    });
  }

});
