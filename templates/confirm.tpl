<!-- IF status -->
<div class="alert alert-success">
	<strong>[[notifications:email-confirmed]]</strong>
	<p>[[notifications:email-confirmed-message]]</p>
<!-- ELSE -->
<div class="alert alert-danger">
	<strong>[[notifications:email-confirm-error]]</strong>
	<p>[[notifications:email-confirm-error-message]]</p>
<!-- ENDIF status -->
	<p>
		<a href="{relative_path}/">[[notifications:back_to_home, {config.siteTitle}]]</a>
	</p>
</div>
