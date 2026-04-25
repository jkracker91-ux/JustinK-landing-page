// CS 506 · Week 3 Starter · Lightbox
// A small image-overlay feature, ~40 lines of vanilla JavaScript.
// Four concepts on display: DOM, events, state, security.

// ── DOM refs (cached once at load time) ─────────────────────────────────
const lb       = document.querySelector('.lightbox');
const lbImg    = lb.querySelector('.lightbox__img');
const lbCap    = lb.querySelector('.lightbox__caption');
const thumbs   = document.querySelectorAll('.gallery__thumb');

// ── State ───────────────────────────────────────────────────────────────
const state = {
  isOpen: false,
  index: 0,
  images: [
    { src: 'images/DSC01957.JPG', caption: 'Me' },
    { src: 'images/file-10.jpeg', caption: 'Me Also' },
    { src: 'images/Manchester_United_FC_crest.svg.png', caption: 'Manchester United Fan' },
    { src: 'images/w-logo-with-wordmark_0.jpg', caption: 'University of Washington Tacoma' },
  ],
};

// ── Mutators ────────────────────────────────────────────────────────────
function openLightbox(i) {
  state.isOpen = true;
  state.index = i;
  render();
}

function closeLightbox() {
  state.isOpen = false;
  render();
}

// ── Render (state → DOM) ────────────────────────────────────────────────
function render() {
  if (state.isOpen) {
    const { src, caption } = state.images[state.index];
    lbImg.setAttribute('src', src);
    lbCap.textContent = caption;
    lb.classList.add('open');
  } else {
    lb.classList.remove('open');
  }
}

// ── Event listeners ─────────────────────────────────────────────────────
thumbs.forEach((thumb, i) => {
  thumb.addEventListener('click', () => openLightbox(i));
});

lb.addEventListener('click', (e) => {
  if (e.target === lb) closeLightbox();
});

document.addEventListener('keydown', (e) => {
  if (e.key === 'Escape' && state.isOpen) closeLightbox();
});
