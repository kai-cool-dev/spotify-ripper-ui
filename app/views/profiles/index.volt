<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-users-cog"></i> Manage Profiles</h1>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						{{ content() }}
					</div>
				</div>
				<form method="post" action="{{ url("profiles/search") }}" autocomplete="off">
				  <div class="row">
				  	<div class="col-lg-6">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">ID</span>
				        </div>
				        {{ form.render("id") }}
				      </div>
				  	</div>
				    <div class="col-lg-6">
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Name</span>
				        </div>
				        {{ form.render("name") }}
				      </div>
				  	</div>
				  </div>
					<div class="row">
						<div class="col-lg-6">
							{{ link_to("profiles/create", '<i class="fas fa-plus"></i> Create Profiles', "class": "btn btn-success form-control") }}
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
