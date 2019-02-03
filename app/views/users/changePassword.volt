<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-12">
            <h1><i class="fas fa-user-edit"></i> Change your own Password</h1>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            {{ content() }}
          </div>
        </div>
        <form method="post" autocomplete="off" action="{{ url("users/changePassword") }}">
          <div class="row">
            <div class="col-lg-6">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-key"></i> New Password</span>
                </div>
                {{ form.render("password") }}
              </div>
            </div>
            <div class="col-lg-6">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-key"></i> Confirm Password</span>
                </div>
                {{ form.render("confirmPassword") }}
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              {{ submit_button("Change Password", "class": "btn btn-primary form-control") }}
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
