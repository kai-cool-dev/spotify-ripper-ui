<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  {{ link_to(null, 'class': 'navbar-brand', '<i class="fas fa-globe"></i> kDNS')}}
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      {%- set menus = [
        '<i class="fas fa-home"></i> Home': 'index',
        '<i class="fas fa-search"></i> List/Search Domains': 'domain/index',
        '<i class="fas fa-plus"></i> Create new Domain': 'domain/create'
      ] -%}

      {%- for key, value in menus %}
        {% if value == dispatcher.getControllerName() %}
        <li class="nav-item active">{{ link_to(value, key, 'class':'nav-link') }}</li>
        {% else %}
        <li class="nav-item">{{ link_to(value, key, 'class':'nav-link') }}</li>
        {% endif %}
      {%- endfor -%}
    </ul>
    {% if identity["profile"] == "Administrators" %}
    <ul class="navbar-nav mr-auto">
      {%- set menus = [
        '<i class="fas fa-user-shield"></i> Permissions': 'permissions',
        '<i class="fas fa-users-cog"></i> Profiles': 'profiles',
        '<i class="fas fa-user-edit"></i> Users': 'users'
      ] -%}
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user"></i> User
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          {%- for key, value in menus %}
            {% if value == dispatcher.getControllerName() %}
              {{ link_to(value, key, 'class':'dropdown-item active') }}
            {% else %}
              {{ link_to(value, key, 'class':'dropdown-item') }}
            {% endif %}
          {%- endfor -%}
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-server"></i> DNS
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          {%- set menus = [
            '<i class="fas fa-wrench"></i> Top Level Domains': 'topdomains/index',
            '<i class="fas fa-wrench"></i> Nameserver': 'nameserver/index',
            '<i class="far fa-file-alt"></i> Changelog': 'changelog/index'
          ] -%}
          {%- for key, value in menus %}
            {% if value == dispatcher.getControllerName() %}
              {{ link_to(value, key, 'class':'dropdown-item active') }}
            {% else %}
              {{ link_to(value, key, 'class':'dropdown-item') }}
            {% endif %}
          {%- endfor -%}
        </div>
      </li>
    </ul>
    {% endif %}
    <ul class="navbar-nav mr-r4">
      <li class="nav-item">{{ link_to('users/changePassword', '<i class="fas fa-user-edit"></i> Change your Password', 'class':'nav-link') }}</li>
      <li class="nav-item">{{ link_to('session/logout', '<i class="fas fa-sign-out-alt"></i> Logout', 'class':'nav-link') }}</li>
    </ul>
  </div>
</nav>

<div class="container-fluid main-container">
  {{ content() }}
</div>

<footer>
  Made with <i class="far fa-heart"></i> in <span id="germany">Germany</span><br>
  <i class="far fa-copyright"></i> 2018 to {{ date("Y") }} Kai Pazdzewicz.<br>
  kDNS Version 2
</footer>
