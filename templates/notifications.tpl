

<!-- IF !notifications.length -->
	<div class="alert alert-info">
		[[notifications:no_notifs]]
	</div>
<!-- ELSE -->
<h2>[[notifications:title]]</h2>
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

<!-- ENDIF !notifications.length -->
