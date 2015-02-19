
<!-- IF !notifications.length -->
<li class="no-notifs"><a>[[notifications:no_notifs]]</a></li>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<li class="{notifications.readClass}">
	<a href="{notifications.path}" data-nid="{notifications.nid}">
	<!-- IF notifications.image -->
	<img src="{notifications.image}" />
	<!-- ENDIF notifications.image -->

	<div class="pull-right mark-read" aria-label="Mark Read"></div>
	<span class="pull-right relTime">{notifications.timeago}</span>

	<span class="text">{notifications.bodyShort}</span>

	</a>
</li>
<!-- END notifications -->
<!-- IF notifications.length -->
<li class="pagelink"><a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a></li>
<li class="pagelink"><a href="{config.relative_path}/notifications">[[notifications:see_all]]</a></li>
<!-- ENDIF notifications.length -->
