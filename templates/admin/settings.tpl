<h1><i class="fa fa-cogs"></i> Settings</h1>
<hr />

<ul id="settings-tab" class="nav nav-tabs">
	<li class="active"><a href="#general" data-toggle="tab">General</a></li>
	<li><a href="#privilege-thresholds" data-toggle="tab">Privilege Thresholds</a></li>
	<li><a href="#email" data-toggle="tab">Email</a></li>
	<li><a href="#user" data-toggle="tab">User</a></li>
	<li><a href="#post" data-toggle="tab">Post</a></li>
	<li><a href="#pagination" data-toggle="tab">Pagination</a></li>
	<li><a href="#tags" data-toggle="tab">Tags</a></li>
	<li><a href="#web-crawler" data-toggle="tab">Web Crawler</a></li>
	<li><a href="#sockets" data-toggle="tab">Sockets</a></li>
	<li><a href="#advanced" data-toggle="tab">Advanced</a></li>
</ul>

<div class="tab-content">
	<!-- IMPORT admin/settings/general.tpl -->
	<!-- IMPORT admin/settings/email.tpl -->
	<!-- IMPORT admin/settings/user.tpl -->
	<!-- IMPORT admin/settings/post.tpl -->
	<!-- IMPORT admin/settings/pagination.tpl -->
	<!-- IMPORT admin/settings/tags.tpl -->
	<!-- IMPORT admin/settings/web-crawler.tpl -->
	<!-- IMPORT admin/settings/sockets.tpl -->
	<!-- IMPORT admin/settings/advanced.tpl -->

	<!-- This was not moved into a partial because I am removing it soon (@julianlam) -->
	<div class="tab-pane" id="privilege-thresholds">
		<form>
			<div class="alert alert-warning">
				<p>Use <strong>privilege thresholds</strong> to manage how much reputation a user must gain to receive moderator access.</p><br />
				<strong>Manage Thread</strong><br /> <input type="text" class="form-control" value="1000" data-field="privileges:manage_topic"><br />
				<strong>Manage Content</strong><br /> <input type="text" class="form-control" value="1000" data-field="privileges:manage_content"><br />
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="privileges:disabled"> <strong>Disable Privilege Threshold System</strong>
					</label>
				</div>
			</div>
		</form>
	</div>
</div>


<button class="btn btn-primary" id="save">Save</button>

<script>
	require(['forum/admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>