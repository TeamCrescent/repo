# 📜 Certifications

<style>
  details {
    margin-bottom: 1em;
  }

  summary {
    cursor: pointer;
    font-weight: bold;
    font-size: 1.1em;
  }

  .image-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    justify-content: flex-start;
  }

  .image-grid img {
    flex: 1 1 calc(33.333% - 10px);
    max-width: calc(33.333% - 10px);
    height: auto;
    border-radius: 6px;
    object-fit: cover;
    cursor: zoom-in;
    transition: transform 0.2s;
  }

  .image-grid img:hover {
    transform: scale(1.03);
  }

  /* Modal styles */
  #imgModal {
    display: none;
    position: fixed;
    z-index: 1000;
    padding-top: 60px;
    left: 0; top: 0;
    width: 100%; height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.8);
  }

  #imgModal img {
    margin: auto;
    display: block;
    max-width: 90%;
    max-height: 80vh;
    border-radius: 8px;
  }

  #imgModal .closeBtn {
    position: absolute;
    top: 20px; right: 35px;
    color: white;
    font-size: 40px;
    font-weight: bold;
    cursor: pointer;
  }

  @media (max-width: 768px) {
    .image-grid img {
      flex: 1 1 calc(50% - 10px);
      max-width: calc(50% - 10px);
    }
  }

  @media (max-width: 480px) {
    .image-grid img {
      flex: 1 1 100%;
      max-width: 100%;
    }
  }
</style>

<details open>
  <summary>📷 Project Screenshots</summary>
  <div class="image-grid">
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 1" />
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 2" />
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 3" />
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 4" />
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 5" />
    <img src="https://mrchike.github.io/chikeegonu/static/media/PythonCertificate.111922fe345597ee0faa.png" alt="Certificate 6" />
  </div>
</details>

<!-- Modal -->
<div id="imgModal">
  <span class="closeBtn" onclick="document.getElementById('imgModal').style.display='none'">&times;</span>
  <img id="modalImg" src="" alt="Zoomed Image" />
</div>

<script>
  // Get modal elements
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
</script>
