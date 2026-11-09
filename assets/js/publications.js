document.addEventListener('DOMContentLoaded', function () {
  // Support both the legacy Bootstrap buttons and the compact publication links.
  const buttons = document.querySelectorAll('.publications .links .btn, .publications .links .publication-link');

  buttons.forEach(function (button) {
    button.addEventListener('click', function (event) {
      // For buttons that are not links, prevent default action
      if (this.getAttribute('role') === 'button' && this.getAttribute('href') === null) {
        event.preventDefault();
      }

      const buttonType = this.classList.contains('abstract') ? 'abstract' :
                         this.classList.contains('bibtex') ? 'bibtex' :
                         this.classList.contains('award') ? 'award' :
                         this.classList.contains('video') ? 'video' : null;

      if (buttonType) {
        const entry = this.closest('.publication-row, .row');
        if (!entry) return;

        const targetDiv = entry.querySelector('.' + buttonType + '.hidden');

        if (targetDiv) {
          targetDiv.classList.toggle('open');

          if (buttonType === 'abstract') {
            const isOpen = targetDiv.classList.contains('open');
            const toggleIcon = this.querySelector('.publication-toggle-icon');

            this.setAttribute('aria-expanded', String(isOpen));
            if (toggleIcon) {
              toggleIcon.textContent = isOpen ? '▾' : '▸';
            } else {
              this.textContent = isOpen ? 'Hide Abstract' : 'Abstract';
            }
          } else if (buttonType === 'bibtex') {
            this.textContent = targetDiv.classList.contains('open') ? 'Hide BibTeX' : 'BibTeX';
          } else if (buttonType === 'video') {
            this.textContent = targetDiv.classList.contains('open') ? 'Hide Video' : 'Video';
          } else if (buttonType === 'award') {
            this.classList.toggle('active');
          }
        }
      }
    });
  });

});
