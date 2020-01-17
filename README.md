<div class="navbar navbar-expand-sm navbar-light navbar-lewagon">
  <%= link_to root_path, class: "navbar-brand" do %>
    <%= image_tag "changerlavie.png" %>
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
