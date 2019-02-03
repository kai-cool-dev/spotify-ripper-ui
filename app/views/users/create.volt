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
				<form method="post" autocomplete="off">
				  <div class="row">
				  	<div class="col-lg-4">
				      <div class="input-group mb-3">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Name</span>
				        </div>
				        {{ form.render("name") }}
				      </div>
				  	</div>
				    <div class="col-lg-4">
				      <div class="input-group mb-3">
				        <div class="input-group-prepend">
				          <span class="input-group-text">E-Mail</span>
				        </div>
				        {{ form.render("email") }}
				      </div>
				  	</div>
				    <div class="col-lg-4">
				      <div class="input-group mb-3">
				        <div class="input-group-prepend">
				          <span class="input-group-text">Profile</span>
				        </div>
				        {{ form.render("profilesId") }}
				      </div>
				  	</div>
				  </div>
				  <div class="row">
				    <div class="col-lg-6">
				      {{ link_to("users", '<i class="fas fa-angle-left"></i> Go Back', 'class' : 'form-control btn btn-primary') }}
				    </div>
				    <div class="col-lg-6">
				      <button type="submit" class="btn btn-success form-control"><i class="fas fa-plus"></i> Create</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div>
