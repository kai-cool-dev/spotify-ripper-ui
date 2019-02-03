<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<h1><i class="fas fa-sign-in-alt"></i> Forgot your Password?</h1>
						<hr>
						<p>Please enter your E-Mail, then we can send you a password reset link.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						{{ content() }}
					</div>
				</div>
				{{ form('class': 'form-search') }}
					<div class="row">
						<div class="col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">E-Mail</span>
								</div>
								{{ form.render('email') }}
							</div>
						</div>
						<div class="col-lg-6">
							{{ form.render('Send') }}
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
