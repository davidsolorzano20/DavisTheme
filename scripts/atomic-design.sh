#!/usr/bin/env bash

echo 'Create Index.html'
touch index.html
echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DavisTheme</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://use.fontawesome.com/216d67c8bd.js"></script>
  <style type="text/css">
    html, body {
      background-color: #fff;
      color: #636b6f;
      font-weight: 100;
      height: 100vh;
      margin: 0;
      text-align: center;
    }
    h1.davistheme {
      font-size: 8em;
      margin-top: 18%;
      text-blink: 0.1px;
    }

    .social-network > a {
      color: #636b6f;
      padding: 0 8px;
      font-weight: 600;
      letter-spacing: .1rem;
      text-decoration: none;
    }
    .social-network > a > i {
      color: #286090;
    }
  </style>

</head>
<body>
<div class="container">
  <div class="container-fluid">
    <div class="row">
      <h1 class="davistheme">DavisTheme</h1>
      <div class="social-network">
        <a href="https://www.facebook.com/luis.solorzanop.9">
          <i class="fa fa-facebook-official fa-3x"></i>
        </a>
        <a href="https://twitter.com/David_Paredes21">
          <i class="fa fa-twitter fa-3x"></i>
        </a>
        <a href="https://plus.google.com/+LuisSolorzanoP">
          <i class="fa fa-google-plus-official fa-3x"></i>
        </a>
        <a href="https://github.com/davidsolorzano20">
          <i class="fa fa-github fa-3x"></i>
        </a>
        <a href="https://www.drupal.org/u/davidparedes21">
          <i class="fa fa-drupal fa-3x"></i>
        </a>
      </div>
    </div>
  </div>
</div>

<script src="assets/libraries/jquery.min.js"></script>
<script src="assets/libraries/bootstrap.min.js"></script>
<script src="assets/libraries/semantic.min.js"></script>
<script src="assets/libraries/freewall.js"></script>
</body>
</html>' >> index.html

echo 'Rename Semantic css to scss and font-awesome'
mv bower_components/font-awesome/css/font-awesome.min.css bower_components/font-awesome/css/_awesome.scss
mv bower_components/semantic/dist/semantic.min.css bower_components/semantic/dist/_semantic.scss
echo 'Add Configuration Atomic Design'
mkdir css
mkdir assets
cd assets
touch style.scss
echo '@import "../bootstrap-sass/sass/bootstrap";
@import "../bootstrap-sass/sass/awesome.scss";
@import "semantic/semantic.scss";
@import "pattern-lab/00_atoms/01-images";
@import "pattern-lab/01_molecules/01-navigation";
@import "pattern-lab/02_organisms/01-article";
@import "pattern-lab/03_templates/01-landing-page";
@import "pattern-lab/04_pages/_01-home-pages.scss";' >> style.scss

mkdir images
mkdir js
mkdir pattern-lab
cd pattern-lab

mkdir 00_atoms
cd 00_atoms
touch _01-images.scss
cd ..

mkdir 01_molecules
cd 01_molecules
touch _01-navigation.scss
cd ..

mkdir 02_organisms
cd 02_organisms
touch _01-article.scss
cd ..

mkdir 03_templates
cd 03_templates
touch _01-landing-page.scss
cd ..

mkdir 04_pages
cd 04_pages
touch _01-home-pages.scss
