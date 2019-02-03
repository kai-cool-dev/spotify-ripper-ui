<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-user-shield"></i> Manage Permissions</h1>
						<hr>
						<p>Select the Profile and manage the access level.<br>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						{{ content() }}
					</div>
				</div>
				<form method="post">
					<div class="row">
						<div class="col-lg-8">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Profile</span>
								</div>
								{{ select('profileId', profiles, 'using': ['id', 'name'], 'useEmpty': true, 'emptyText': '...', 'emptyValue': '', 'class' : 'form-control') }}
							</div>
						</div>
						<div class="col-lg-4">
							{{ submit_button('Select', 'class': 'btn btn-primary form-control', 'name' : 'search') }}
						</div>
					</div>

				{% if request.isPost() and profile %}
					{% for resource, actions in acl.getResources() %}
					<div class="row">
						<div class="col-lg-12">
							<h3>{{ resource }}</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<table class="table table-borderless table-striped" align="center">
								<thead>
									<tr>
										<th width="5%"></th>
										<th>Description</th>
									</tr>
								</thead>
								<tbody>
									{% for action in actions %}
									<tr>
										<td align="center"><input type="checkbox" name="permissions[]" value="{{ resource ~ '.' ~ action }}"  {% if permissions[resource ~ '.' ~ action] is defined %} checked="checked" {% endif %}></td>
										<td>{{ acl.getActionDescription(action) ~ ' ' ~ resource }}</td>
									</tr>
									{% endfor %}
								</tbody>
							</table>
						</div>
					</div>
					{% endfor %}
					{{ submit_button('Submit', 'class': 'btn btn-primary form-method', 'name':'submit') }}
				{% endif %}
				</form>
			</div>
		</div>
	</div>
</div>
