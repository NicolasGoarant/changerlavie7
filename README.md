<div class="navbar navbar-expand-sm navbar-light navbar-lewagon">
  <%= link_to root_path, class: "navbar-brand" do %>
<!--     <%= image_tag "changerlavie.png" %> -->
  <% end %>
    <div class="slogan">
    <p>&Eacutetonner  &Eacuteclairer  Entraîner</p>
<!--       <div class="sloganbis">
        <p>Concept ?</p>
      </div> -->
    </div>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <%= link_to "Home", "#", class: "nav-link" %>
      </li>
      <li class="nav-item">
        <%= link_to "Messages", "#", class: "nav-link" %>
      </li>
      <li class="nav-item dropdown">
        <%= image_tag "https://kitt.lewagon.com/placeholder/users/ssaunier", class: "avatar dropdown-toggle", id: "navbarDropdown", data: { toggle: "dropdown" }, 'aria-haspopup': true, 'aria-expanded': false %>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
          <%= link_to "Action", "#", class: "dropdown-item" %>
          <%= link_to "Another action", "#", class: "dropdown-item" %>
        </div>
      </li>
    </ul>
  </div>
</div>




.container.col-sm-6.col-centered-md-6.col-centered-lg-6
  .row-fluid
    #article.card-trip
      = cl_image_tag @article.photo
      - if @article.library_id.nil?
        .boutons_article= link_to "Ajouter à ma bibliothèque", article_path(@article), method: :patch, class: "bouton4"
      - else
        .boutons_article= link_to "Ôter de ma bibliothèque", article_path(@article), method: :patch, class: "bouton4"
      .bloc-auteur
        = cl_image_tag @article.media, class: "media"
      .container
        .row
          .col-12
            %h5.my-2= @article.auteur
          .col-12
            %h5.my-2= @article.publication
          .col-12
            %h2.mt-4= @article.title
          .col-12
            %h3.my-4 Idée ➔ #{@article.engagement}
      .container.pb-5
        = @article.content.try(:html_safe)
        %small.text-muted
          publié le
          = @article.publication
          - if @article.auteur.present?
            par
            = @article.auteur
    #map{"data-mapbox-api-key" => "pk.eyJ1IjoiYWdnb2xmZSIsImEiOiJjazE3dDc3amYxZmlkM2xwM29jZGp2dmNiIn0.dZFTZnFgD91_YL9rarsVlw", "data-markers" => @markers.to_json, :style => "width: 100%; height: 600px;"}



  <div class="row justify-content-center">
    <%= image_tag "eb.png", class: "wrapper justify-content-center col-md-10 col-sm-12 col-lg-4 pb-lg-2" %>
  </div>




<div class="paddingnavbar">
  <div class="container-fluid fixed-top col-md-centered-6 col-sm-7 col-lg-centered-6">
        <div class="navbar navbar-lewagon">

          <%= link_to pages_contact_path do %>
            <%= image_tag "lettre2.png", class: "logonavbar"  %>
          <% end %>


          <%= link_to newspapers_path do %>
            <%= image_tag "amontourexclamation.png", class: "logonavbar-centre" %>
          <% end %>


        <%= link_to destroy_user_session_path, method: :delete do %>
          <%= image_tag "deconnexion7.png", class: "logonavbar" %>
        <% end %>

        </div>

  </div>
</div>





    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
