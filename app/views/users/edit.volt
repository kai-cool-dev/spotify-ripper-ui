<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-users-cog"></i> Edit User "{{ user.name }}"</h1>
						<hr>
					</div>
				</div>
				<div class="row">
				  <div class="col-lg-12">
				    {{ content() }}
				  </div>
				</div>
				<form method="post" autocomplete="off">
				  {{ form.render("id") }}
				  <div class="row">
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Name</span>
				        </div>
				        {{ form.render("name") }}
				      </div>
				    </div>
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Profile</span>
				        </div>
				        {{ form.render("profilesId") }}
				      </div>
				    </div>
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">E-Mail</span>
				        </div>
				        {{ form.render("email") }}
				      </div>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Suspended</span>
				        </div>
				        {{ form.render("suspended") }}
				      </div>
				    </div>
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Banned</span>
				        </div>
				        {{ form.render("banned") }}
				      </div>
				    </div>
				    <div class="col-lg-4">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Confirmed</span>
				        </div>
				        {{ form.render("active") }}
				      </div>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-lg-6">
				      {{ link_to("users/search", '<i class="fas fa-angle-left"></i> Go Back', 'class' : 'form-control btn btn-primary') }}
				    </div>
				    <div class="col-lg-6">
				      <button type="submit" class="btn btn-success form-control"><i class="fas fa-save"></i> Save</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-4">
		<div class="card">
			<div class="card-body">
				<div class="row">
				  <div class="col-lg-12">
				    <h2>Login Information</h2>
						<hr>
				  </div>
				</div>
				<div class="row">
				  <div class="col-lg-12">
				    <table class="table table-borderless table-striped" align="center">
				      <thead>
				        <tr>
				          <th>#</th>
				          <th>IP Address</th>
				          <th>User Agent</th>
				        </tr>
				      </thead>
				      <tbody>
				        {% for login in user.successLogins %}
				        <tr>
				          <th>#{{ login.id }}</th>
				          <td>{{ login.ipAddress }}</td>
				          <td>{{ login.userAgent }}</td>
				        </tr>
				        {% else %}
				          <tr><td colspan="3" align="center">User does not have successfull logins</td></tr>
				        {% endfor %}
				      </tbody>
				    </table>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="card">
			<div class="card-body">
				<div class="row">
				  <div class="col-lg-12">
				    <h2>Password change history</h2>
						<hr>
				  </div>
				</div>
				<div class="row">
				  <div class="col-lg-12">
				    <table class="table table-borderless table-striped" align="center">
				      <thead>
				        <tr>
				          <th>#</th>
				          <th>IP Address</th>
				          <th>User Agent</th>
				          <th>Date</th>
				        </tr>
				      </thead>
				      <tbody>
				        {% for change in user.passwordChanges %}
				        <tr>
				          <th>#{{ change.id }}</th>
				          <td>{{ change.ipAddress }}</td>
				          <td>{{ change.userAgent }}</td>
				          <td>{{ date("Y-m-d H:i:s", change.createdAt) }}</td>
				        </tr>
				        {% else %}
				          <tr><td colspan="4" align="center">User has not changed his/her password</td></tr>
				        {% endfor %}
				      </tbody>
				    </table>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="card">
			<div class="card-body">
				<div class="row">
				  <div class="col-lg-12">
				    <h2>Password reset history</h2>
						<hr>
				  </div>
				</div>
				<div class="row">
				  <div class="col-lg-12">
				    <table class="table table-borderless table-striped" align="center">
				      <thead>
				        <tr>
				          <th>#</th>
				          <th>Date</th>
				          <th>Reset?</th>
				        </tr>
				      </thead>
				      <tbody>
				        {% for reset in user.resetPasswords %}
				        <tr>
				          <th>#{{ reset.id }}</th>
				          <td>{{ date("Y-m-d H:i:s", reset.createdAt) }}</td>
				          <td>{{ reset.reset == 'Y' ? 'Yes' : 'No' }}</td>
				        </tr>
				        {% else %}
				        <tr><td colspan="3" align="center">User has not requested reset his/her password</td></tr>
				        {% endfor %}
				      </tbody>
				    </table>
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>
