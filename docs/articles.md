# 📰 Articles

<style>
  details {
    margin-bottom: 1em;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 10px;
    background: #f9f9f9;
  }

  summary {
    font-size: 1.1em;
    font-weight: 600;
    cursor: pointer;
  }

  .article-content {
    margin-top: 10px;
    display: flex;
    align-items: center;
    gap: 15px;
  }

  .article-content img {
    width: 120px;
    height: 80px;
    border-radius: 6px;
    object-fit: cover;
    cursor: pointer;
    transition: transform 0.2s;
  }

  .article-content img:hover {
    transform: scale(1.05);
  }

  .article-content a {
    text-decoration: none;
    color: #1a0dab;
    font-weight: 500;
  }

  .article-content p {
    margin: 0;
    font-size: 1.1em;
    color: #333;
  }
</style>

## 📝 Featured Articles

<details open>
  <summary>🔥 FastAPI in Production: Build, Scale & Deploy – Series A: Codebase Design</summary>
  <div class="article-content">
    <!-- Placeholder image container -->
    <a id="seriesA-link" target="_blank">
      <img
        src="https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fn73erjzevwsm8oh1gza3.webp"
        alt="Article Thumbnail"
        style="width: 150px; border-radius: 6px;"
      />
    </a>

    <div>
      <p>A Base foundation of how to build a production ready and scalable application with FastAPI
      A Base foundation of how to build a production ready and scalable application with FastAPI</p>
      <a id="seriesA-text-link" target="_blank">Read Full Article →</a>
    </div>
  </div>
</details>

<details open>
  <summary>🛠️ FastAPI in Production: Build, Scale & Deploy - Series B : Services, Queues & Containers</summary>
  <div class="article-content">
    <!-- Placeholder image container -->
    <a id="seriesB-link" target="_blank">
      <img
        src="https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fdpcstyz0hd79dthhjv4z.jpg"
        alt="Article Thumbnail"
        style="width: 150px; border-radius: 6px;"
      />
    </a>

    <div>
      <p>How to dockerize your FastAPI Project</p>
      <a id="seriesB-text-link" target="_blank">Read Full Article →</a>
    </div>
  </div>
</details>

<script>
  const seriesA = "https://dev.to/mrchike/fastapi-in-production-build-scale-deploy-series-a-codebase-design-ao3";
  document.getElementById("seriesA-link").href = seriesA;
  document.getElementById("seriesA-text-link").href = seriesA;

  const seriesB = "https://dev.to/mrchike/fastapi-in-production-build-scale-deploy-series-b-services-queues-containers-2lfj-temp-slug-3211147?preview=efee997d9f51ba04301f3508a0903c035af4b72f29d08f581f16ac37d7dbdc33c613587a059353fab699658202393fdedef278521c47b37b01ff906f";
  document.getElementById("seriesB-link").href = seriesB;
  document.getElementById("seriesB-text-link").href = seriesB;
</script>
