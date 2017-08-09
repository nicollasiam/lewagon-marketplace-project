$(document).ready(function() {
  $('.card-index').on('mouseover', function() {
    $(this).find('video')[0].play();
  });

  $('.card-index').on('mouseout', function() {
    $(this).find('video')[0].pause();
  })
});
