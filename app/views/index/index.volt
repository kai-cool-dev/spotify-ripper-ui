<div class="row">
	<div class="col-lg-12">
		<div class="jumbotron">
			<h1 class="display-4">Welcome to <i class="fas fa-music"></i> Spotify-Ripper!</h1>
			<p class="lead">Please login to start ripping your spotify music.</p>
			<hr class="my-4">
			<div class="row">
				{%- if logged_in is defined and not(logged_in is empty) -%}
				<div class="col-lg-12">
					{{ link_to('spotify/index', '<i class="fas fa-server"></i> Spotify-Ripper', 'class': 'btn btn-primary btn-large form-control') }}
				</div>
		    {% else %}
				<div class="col-lg-12">
					{{ link_to('session/login', '<i class="fas fa-sign-in-alt"></i> Login', 'class': 'btn btn-success btn-large form-control') }}
				</div>
		    {% endif %}
			</div>
		</div>
	</div>
</div>
