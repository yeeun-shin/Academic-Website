window.HELP_IMPROVE_VIDEOJS = false;

document.addEventListener('DOMContentLoaded', function() {
  if (typeof bulmaCarousel !== 'undefined') {
    bulmaCarousel.attach('.carousel', {
      slidesToScroll: 1,
      slidesToShow: 3,
      loop: true,
      infinite: true,
      autoplay: true,
      autoplaySpeed: 5000
    });
  }

  document.querySelectorAll('.bibtex-copy').forEach(function(button) {
    button.addEventListener('click', async function() {
      var code = button.parentElement.querySelector('code');
      try {
        if (navigator.clipboard && window.isSecureContext) {
          await navigator.clipboard.writeText(code.textContent);
        } else {
          var selection = window.getSelection();
          var range = document.createRange();
          range.selectNodeContents(code);
          selection.removeAllRanges();
          selection.addRange(range);
          var copied = document.execCommand('copy');
          selection.removeAllRanges();
          if (!copied) throw new Error('Copy failed');
        }
        button.textContent = 'Copied';
      } catch (error) {
        button.textContent = 'Copy failed';
      }
      window.setTimeout(function() { button.textContent = 'Copy'; }, 2000);
    });
  });
});
