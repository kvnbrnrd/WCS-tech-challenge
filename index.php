<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tech Challenge WCS - Kevin Bernard</title>
  <link rel="stylesheet" href="/assets/style.css">
</head>
<body>
<!-- Header section -->
  <header>
    <h1>
      <img src="https://www.wildcodeschool.com/assets/logo_main-e4f3f744c8e717f1b7df3858dce55a86c63d4766d5d9a7f454250145f097c2fe.png" alt="Wild Code School logo" />
      Les Argonautes
    </h1>
  </header>
<!-- Main section -->
  <main>
  <!-- New member form -->
    <h2>Ajouter un(e) Argonaute</h2>
    <form method="post" class="new-member-form">
      <label for="name">Nom de l&apos;Argonaute</label>
      <div class="error"></div>
      <input id="name" name="name" type="text" placeholder="Jason, beau, vaillant et courageux" />
      <button class="member-add" type="submit">Ajouter membre</button>
    </form>
  <!-- Member list -->
    <h2>Membres de l'équipage <span class="member-amount"></span></h2>
    <section class="member-list"></section>
  </main>
<!-- Footer section -->
  <footer>
    <p>Réalisé par Jason en Anthestérion de l'an 515 avant JC</p>
  </footer>
<!-- Scripts -->
  <script
          src="https://code.jquery.com/jquery-3.5.1.min.js"
          integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
          crossorigin="anonymous"></script>
  <script src="/assets/script.js"></script>
</body>
</html>