
<div class="notifications">
	<h2>[[notifications:title]]</h2>
	<button class="btn btn-danger delete <!-- IF !notifications.length -->hidden<!-- ENDIF !notifications.length -->">[[global:delete_all]]</button>

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="notifications-list">
	<!-- BEGIN notifications -->
		<li data-nid="{notifications.nid}" class="{notifications.readClass}">
			<a href="{notifications.path}">{notifications.bodyShort}</a>
			<p class="timestamp">
				<span class="timeago" title="{notifications.datetimeISO}"></span>
			</p>
		</li>
	<!-- END notifications -->
	</ul>
</div>


