<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-12">
            <h1><i class="fas fa-user-edit"></i> Manage Users</h1>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            {{ content() }}
          </div>
        </div>
        <form method="post" action="{{ url("users/search") }}" autocomplete="off">
          <div class="row">
          	<div class="col-lg-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">ID</span>
                </div>
                {{ form.render("id") }}
              </div>
          	</div>
            <div class="col-lg-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Name</span>
                </div>
                {{ form.render("name") }}
              </div>
          	</div>
            <div class="col-lg-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">E-Mail</span>
                </div>
                {{ form.render("email") }}
              </div>
          	</div>
            <div class="col-lg-3">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Profile</span>
                </div>
                {{ form.render("profilesId") }}
              </div>
          	</div>
          </div>
          <div class="row">
          	<div class="col-lg-6">
              {{ link_to("users/create", '<i class="fas fa-plus"></i> Create User', "class": "btn btn-success form-control") }}
          	</div>
            <div class="col-lg-6">
              <button type="submit" class="btn btn-primary form-control"><i class="fas fa-search"></i> Search</button>
          	</div>
          </div>
        </form>

      </div>
    </div>
  </div>
</div>
