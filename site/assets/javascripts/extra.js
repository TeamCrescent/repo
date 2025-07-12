// ----------------------- Certifications Page -----------------------
const modal = document.getElementById('imgModal');
const modalImg = document.getElementById('modalImg');

// Add click listeners to all images
document.querySelectorAll('.image-grid img').forEach(img => {
img.addEventListener('click', () => {
    modal.style.display = 'block';
    modalImg.src = img.src;
    modalImg.alt = img.alt;
});
});

// Close modal when clicking outside the image
modal.addEventListener('click', e => {
if (e.target === modal) {
    modal.style.display = 'none';
}
});

// ----------------------- Projects & Contributions Page -----------------------
document.addEventListener('DOMContentLoaded', () => {
  const projModal = document.getElementById('imgModal');
  const projModalImg = document.getElementById('modalImg');
  const projModalTitle = document.getElementById('modalTitle');
  const projModalDescription = document.getElementById('modalDescription');
  const projModalLinks = document.getElementById('modalLinks');
  const projModalTags = document.getElementById('modalTags');
  const imageGrid = document.querySelector('.image-grid');
  const prevBtn = document.getElementById('prevBtn');
  const nextBtn = document.getElementById('nextBtn');

  let imageList = [];
  let currentIndex = 0;

  if (!imageGrid) {
    console.error('No .image-grid found');
    return;
  }

  function updateModalImage(index) {
    if (!imageList.length) return;

    projModalImg.src = imageList[index];
    projModalImg.alt = projModalTitle.textContent;

    prevBtn.style.display = index > 0 ? 'block' : 'none';
    nextBtn.style.display = index < imageList.length - 1 ? 'block' : 'none';
  }

  imageGrid.addEventListener('click', (e) => {
    if (e.target.tagName === 'IMG') {
      const img = e.target;

      try {
        imageList = JSON.parse(img.dataset.images || '[]');
        currentIndex = imageList.indexOf(img.src);
        if (currentIndex === -1) currentIndex = 0;

        projModalTitle.textContent = img.dataset.title || '';
        projModalDescription.textContent = img.dataset.description || '';

        projModalLinks.innerHTML = '';
        if (img.dataset.links) {
          const links = JSON.parse(img.dataset.links);
          links.forEach(link => {
            const a = document.createElement('a');
            a.href = link.url;
            a.textContent = link.label;
            a.target = '_blank';
            a.rel = 'noopener noreferrer';
            projModalLinks.appendChild(a);
          });
        }

        projModalTags.textContent = img.dataset.tags || '';

        projModal.style.display = 'block';
        updateModalImage(currentIndex);

      } catch (err) {
        console.error('Error parsing image data:', err);
      }
    }
  });

  projModal.addEventListener('click', (e) => {
    if (e.target === projModal) {
      projModal.style.display = 'none';
    }
  });

  prevBtn.addEventListener('click', () => {
    if (currentIndex > 0) {
      currentIndex--;
      updateModalImage(currentIndex);
    }
  });

  nextBtn.addEventListener('click', () => {
    if (currentIndex < imageList.length - 1) {
      currentIndex++;
      updateModalImage(currentIndex);
    }
  });
});
