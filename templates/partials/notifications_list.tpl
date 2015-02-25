
<!-- IF !notifications.length -->
<li class="no-notifs"><a>[[notifications:no_notifs]]</a></li>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<li class="{notifications.readClass}">
	<!-- IF notifications.image -->
	<a href="{relative_path}/user/{notifications.user.userslug}"><img src="{notifications.image}" /></a>
	<!-- ENDIF notifications.image -->

	<div class="pull-right mark-read" aria-label="Mark Read"></div>
	<a href="{notifications.path}" data-nid="{notifications.nid}">
		<span class="pull-right relTime">{notifications.timeago}</span>
		<span class="text">{notifications.bodyShort}</span>
	</a>
	<div class="clear"></div>
</li>
<!-- END notifications -->
