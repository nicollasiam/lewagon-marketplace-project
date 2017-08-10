$(document).ready(function() {
  $('#buyVideos').on('DOMNodeInserted', function() {
    // Grab all children prices
    var videos = $(this).find('.list-group-item');

    var total = sumTotalItemsPrice(videos);

    $('#total-price').text('R$ ' + total);
  });

  $('#buyVideos').on('DOMNodeRemoved', function(e) {
    //  Get current total
    var element = $(e.target);
    var videos = $(this).find('.list-group-item');

    var total = sumTotalItemsPrice(videos);

    $('#total-price').text('R$ ' + (total - parseFloat(element.find('.text-right').text().trim())));
  });



  function sumTotalItemsPrice(domElement) {
    var total = 0;

    domElement.each(function(_, video) {
      total += parseFloat($(video).find('.text-right').text().trim());
    });

    return total;
  }
})
