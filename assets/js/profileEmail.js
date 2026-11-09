document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('[data-protected-email]').forEach(function(link) {
    var email = decodeURIComponent(link.dataset.protectedEmail);
    var label = link.querySelector('[data-email-label]');
    if (label) {
      label.textContent = email;
    } else {
      link.textContent = email;
    }
    link.href = 'mailto:' + email;
  });
});
