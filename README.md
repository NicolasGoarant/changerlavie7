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


header #hamburger
{
    background: url('images/hamburger-gris.png');
}

header #hamburger:hover
{
    background : url('images/hamburger-rouge.png');
}

v



page d'accueil avant nouvelle présentation


<div class="container-fluid fondcontainer col-sm-7 col-centered-md-6 col-centered-lg-6">
  <div class="row net-centered-bis">
    <div class="col-md-12 col-sm-8 col-lg-6 col-centered">
      <div class="reseauxsociaux">
        <a href= "#"><%= image_tag "facebook.png" %></a>
        <a href= "#"><%= image_tag "instagram.png" %></a>
        <a href= "#"><%= image_tag "twitter.png" %></a>
        <a href= "#"><%= image_tag "linkedin.jpg" %></a>
      </div>
    </div>
  </div>
</div>

<div class="container-fluid fondcontainer-bis col-sm-7 col-centered-md-6 col-centered-lg-6">
  <div class="row justify-content-center">
      <div class="logoquater justify-content-center">
        <%= image_tag "amontourexclamation.png", class: "logo" %>
      </div>
  </div>
  <div class="textebis col-md-12 col-sm-12 col-lg-12 pb-lg-5">
    <h3><b>Les informations qui étonnent, éclairent, entraînent</b></h3>
<!--           <h3><b>étonnent, éclairent, entraînent</b></h3> -->
  </div>

  <div class="container net-centered col-sm-12 col-lg-10 col-md-10">
    <div class="row">
      <div class="col-md-4 col-sm-12 mb-4 mb-md-0 col-centered text-justify">
                <%= image_tag "couch.png", class: "logo-accueil" %>
              <h6>C'est un constat partagé : les informations qui nous parviennent sont le plus souvent pesantes. Tragiques. Elles nous enferment dans la passivité : à leur lecture comme à leur écoute, nous nous sentons récepteurs plutôt qu'acteurs. A rebours de ces pensées tristes, l'objectif d'<i>A mon tour !</i> est de <b>susciter l'action, l'engagement, la créativité</b>. </h6>
      </div>
      <div class="col-md-4 col-sm-12 mb-4 mb-md-0 col-centered text-justify">
            <%= image_tag "baguette.png", class: "logo-accueil" %>
              <h6>Avec <i>A mon tour !</i>, nous voulons publier des informations qui précèdent l'action. <b>Issues de la presse nationale comme locale</b>, elles mettent à l'honneur et en lumière <b>le foisonnement d'initiatives</b> qui ouvrent à d'inattendus horizons de l'imagination, suscitent un "<i>c'est étonnant</i>", déclenchent un "<i>pourquoi pas moi</i>". </h6>
      </div>
      <div class="col-md-4 col-sm-12 mb-4 mb-md-0 col-centered text-justify">
            <%= image_tag "action.png", class: "logo-accueil" %>
              <h6>Ces <b>"inform-actions"</b> peuvent vous inspirer tout de suite ou bien plus tard. Vous pouvez les ranger dans une bibliothèque, votre bibliothèque. <i>"A mon tour !"</i> se veut participatif : si vous identifiez des actions enthousiasmantes, des informations étonnantes, des innovations passionnantes, n'hésitez à nous les indiquer. Nous comptons sur vous.</h6>
       </div>
    </div>
  </div>

  <div class="container-fluid fondcontainerbas col-md-12 col-sm-12 col-lg-12 pb-lg-5">
    <%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
  <div class="row justify-content-center aremplir">
    <div class="form-inputs">
        <%= f.input :email,
                    required: false,
                    autofocus: true,
                    input_html: { autocomplete: "email" } %>
        <%= f.input :password,
                    required: false,
                    input_html: { autocomplete: "current-password" } %>
        <%= f.input :remember_me, as: :boolean if devise_mapping.rememberable? %>
    </div>
  </div>

  <div class="row justify-content-center pb-lg-5">
       <%- if devise_mapping.recoverable? && controller_name != 'passwords' && controller_name != 'registrations' %>
        <%= link_to "Mot de passe oublié", new_password_path(resource_name), style: "color: #138A36; font-weight: bold; padding-bottom: 10px; top: -5px;" %><br />
       <% end %>
  </div>

  <div class="row justify-content-center">
    <div class="form-actions">
      <%= f.button :submit, "Valider", class: "bouton2" %>
    </div>
  </div>

  <div class="row justify-content-center">
    <div class="form-actions">
       <%- if devise_mapping.registerable? && controller_name != 'registrations' %>
       <%= link_to "Nouvel utilisateur", new_registration_path(resource_name), class: "bouton2"%><br />
       <% end %>
    </div>
  </div>
  <% end %>
 </div>
</div>

