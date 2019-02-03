<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  {{ link_to(null, 'class': 'navbar-brand', '<i class="fas fa-music"></i> Spotify Ripper')}}
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    {%- if logged_in is defined and not(logged_in is empty) -%}
    <ul class="navbar-nav mr-r4">
      <li class="nav-item">{{ link_to('domain/index', '<i class="fas fa-server"></i> DNS Management', 'class':'nav-link') }}</li>
      <li class="nav-item">{{ link_to('session/logout', '<i class="fas fa-sign-out-alt"></i> Logout', 'class':'nav-link') }}</li>
    </ul>
    {% else %}
    <ul class="navbar-nav mr-r2">
      <li class="nav-item">
        {{ link_to('session/login', '<i class="fas fa-sign-in-alt"></i> Login', 'class':'nav-link') }}
      </li>
    </ul>
    {% endif %}
  </div>
</nav>

<div class="container-fluid main-container">
  {{ content() }}
</div>

<footer>
  Made with <i class="far fa-heart"></i> in <span id="germany">Germany</span><br>
  <i class="far fa-copyright"></i> 2018 to {{ date("Y") }} Kai Pazdzewicz.<br>
</footer>
