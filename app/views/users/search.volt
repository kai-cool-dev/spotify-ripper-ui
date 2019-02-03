<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-user-edit"></i> Search User</h1>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						{{ content() }}
					</div>
				</div>
				<div class="row">
				  <div class="col-lg-6">
				    {{ link_to("users", '<i class="fas fa-angle-left"></i> Go Back', 'class' : 'form-control btn btn-primary') }}
				  </div>
				  <div class="col-lg-6">
				    {{ link_to("users/create", '<i class="fas fa-plus"></i> Create User', "class": "btn btn-success form-control") }}
				  </div>
				</div>
				<div class="row">
					<div class="col-lg-12">
				    {% for user in page.items %}
				      {% if loop.first %}
				      <table class="table table-borderless table-striped" align="center">
				        <thead>
				          <tr>
				            <th>UID</th>
				            <th>Name</th>
				            <th>Email</th>
				            <th>Profile</th>
				            <th>Banned?</th>
				            <th>Suspended?</th>
				            <th>Confirmed?</th>
				          </tr>
				        </thead>
				        <tbody>
				      {% endif %}
				      <tr>
				        <td>{{ user.id }}</td>
				        <td>{{ user.name }}</td>
				        <td>{{ user.email }}</td>
				        <td>{{ user.profile.name }}</td>
				        <td>{{ user.banned == 'Y' ? 'Yes' : 'No' }}</td>
				        <td>{{ user.suspended == 'Y' ? 'Yes' : 'No' }}</td>
				        <td>{{ user.active == 'Y' ? 'Yes' : 'No' }}</td>
				        <td>{{ link_to("users/edit/" ~ user.id, '<i class="fas fa-edit"></i> Edit', "class": "btn btn-primary form-control") }}</td>
				        <td>{{ link_to("users/delete/" ~ user.id, '<i class="fas fa-trash"></i> Delete', "class": "btn btn-danger form-control") }}</td>
				      </tr>
				      {% if loop.last %}
				      </tbody>
				    </table>
				    {% endif %}
				    {% else %}
				        No users are recorded
				    {% endfor %}
					</div>
				</div>
				<div class="row">
				  <div class="col-lg-2">
				    {{ link_to("users/search", '<i class="fas fa-angle-double-left"></i> First', "class": "btn btn-primary form-control") }}
				  </div>
				  <div class="col-lg-2">
				    {{ link_to("users/search?page=" ~ page.before, '<i class="fas fa-angle-left"></i> Previous', "class": "btn btn-primary form-control") }}
				  </div>
				  <div class="col-lg-4">
				    <p class="form-control">{{ page.current }}/{{ page.total_pages }}</p>
				  </div>
				  <div class="col-lg-2">
				    {{ link_to("users/search?page=" ~ page.next, 'Next <i class="fas fa-angle-right"></i>', "class": "btn btn-primary form-control") }}
				  </div>
				  <div class="col-lg-2">
				    {{ link_to("users/search?page=" ~ page.last, 'Last <i class="fas fa-angle-double-right"></i>', "class": "btn btn-primary form-control") }}
				  </div>
				</div>

			</div>
		</div>
	</div>
</div>
