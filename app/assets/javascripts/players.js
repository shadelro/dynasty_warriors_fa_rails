$(function () {
  $("#player-table").tablesorter(
    {
      headers: {
        sortInitialOrder: 'desc',
        0: {sorter: false}
      }
    });
});
