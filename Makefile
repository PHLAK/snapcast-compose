init initialize:
	@cp --interactive --verbose .skeleton/environment.d/*.env environment.d/ || true
	@cp --interactive --verbose .skeleton/.env . || true

update:
	@git pull --ff-only
	@cp --no-clobber --verbose .skeleton/environment.d/*.env environment.d/
	@cp --no-clobber --verbose .skeleton/.env . || true
	@docker compose up --detach --pull always
