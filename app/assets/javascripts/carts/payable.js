$(document).ready(function() {
  $('#buyVideos').on('DOMNodeInserted', function() {
    // Grab all children prices
    var total = 0;
    var videos = $(this).find('.list-group-item');

    if (videos.length == 0) {
      $('.price-wrapper h3').text('R$ 0');
    }
    else {
      videos.each(function(_, video) {
        total += parseFloat($(video).find('.text-right').text().trim());
      });

      $('.price-wrapper h3').text('R$ ' + total);
    }
  });
})
