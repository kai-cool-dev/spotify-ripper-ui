<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-users-cog"></i> Create Profile</h1>
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
				  	<div class="col-lg-6">
				      <div class="input-group mb-3">
				        <div class="input-group-prepend">
				          <span class="input-group-text" id="basic-addon1">Name</span>
				        </div>
				        {{ form.render("name") }}
				      </div>
				  	</div>
				    <div class="col-lg-6">
				      <div class="input-group mb-3">
				        <div class="input-group-prepend">
				          <span class="input-group-text" id="basic-addon1">Active</span>
				        </div>
				        {{ form.render("active") }}
				      </div>
				  	</div>
				  </div>
					<div class="row">
				    <div class="col-lg-6">
				      {{ link_to("profiles", '<i class="fas fa-angle-left"></i> Go Back', 'class' : 'form-control btn btn-primary') }}
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
