init initialize:
	@cp --interactive --verbose .skeleton/environment.d/*.env environment.d/ || true
