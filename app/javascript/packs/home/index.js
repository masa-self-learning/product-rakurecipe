addEventListener('turbolinks:load', function() {
  const getWidth = innerWidth;
  const cards = document.querySelector('.home-index-container');

  if (getWidth >= 768 && getWidth < 1024) {
    cards.classList.add('card--col2');
  } else if (getWidth >= 1024 && getWidth < 1440) {
    cards.classList.add('card--col3');
  } else if (getWidth >= 1440) {
    cards.classList.add('card--col4');
  }
});

addEventListener('resize', function() {
  const getWidth = innerWidth;
  const cards = document.querySelector('.home-index-container');

  if (getWidth < 768) {
    cards.classList.remove('card--col2');
  } else if (getWidth < 1024) {
    cards.classList.remove('card--col3');
    cards.classList.add('card--col2');
  } else if (getWidth < 1440) {
    cards.classList.remove('card--col2');
    cards.classList.remove('card--col4');
    cards.classList.add('card--col3');
  } else if (getWidth >= 1440) {
    cards.classList.remove('card--col3');
    cards.classList.add('card--col4');
  }
});


