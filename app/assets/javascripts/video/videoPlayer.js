$(document).ready(function() {

  $('video').each(function(index, video) {
    video.removeAttribute('controls');

    // Add Timeupdate listener
    $(video).on('timeupdate', function() {
      var bar = $(this).siblings('.control').find('.timeBar');
      var value = 0;

      if (video.currentTime > 0) {
        value = Math.floor((100 / video.duration) * video.currentTime);
      }

      bar.css('width', value + '%');
    });
  });

  // Play/paue when clicking on video
  $('.card').on('click', function() {
    var video = $(this).children('video')[0];

    if ($(this).find('.icon-play').length == 1) { // Is paused, need to play
      $(this).find('.icon-play').addClass('icon-pause').removeClass('icon-play');
      video.play();
    }
    else { // Is playing, need to pause
      $(this).find('.icon-pause').addClass('icon-play').removeClass('icon-pause');
      video.pause();
    }
  });

  // Fullscreen button clicked
  $('.btnFS').on('click', function() {
    video = $(this).parent().parent().siblings('video');

    if($.isFunction(video[0].webkitEnterFullscreen)) {
      video[0].webkitEnterFullscreen();
    }
    else if ($.isFunction(video[0].mozRequestFullScreen)) {
      video[0].mozRequestFullScreen();
    }
    else {
      alert('Your browsers doesn\'t support fullscreen');
    }
  });

  // Sound button clicked
  $('.sound').click(function() {
    video = $(this).parent().parent().siblings('video');

    video[0].muted = !video[0].muted;
    $(this).toggleClass('muted');

    // TODO: Implement volume bar
    // if(video[0].muted) {
    //   $('.volumeBar').css('width',0);
    // }
    // else{
    //   $('.volumeBar').css('width', video[0].volume*100+'%');
    // }
  });
});
