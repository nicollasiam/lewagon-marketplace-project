$(document).ready(function() {
  Sortable.create(choosenVideos,
                  { group: 'buying',
                    sort: true,
                    gohstClass: 'ghost'
                  });

  Sortable.create(buyVideos,
                  { group: 'buying',
                    sort: true,
                    gohstClass: 'ghost'
                  });
})
