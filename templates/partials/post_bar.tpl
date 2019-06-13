<div class="inline-block">

	<span class="tags">
	{{{each tags}}}
	<a href="{config.relative_path}/tags/{tags.value}"><span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.valueEscaped}</span><span class="tag-topic-count">{tags.score}</span></a>
	{{{end}}}
	</span>

	<!-- IF tags.length -->
	<span>&bull;</span>
	<!-- ENDIF tags.length -->

	<small class="topic-stats">
		<span>[[global:posts]]</span>
		<strong><span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span></strong> &bull;
		<span>[[global:views]]</span>
		<strong><span class="human-readable-number" title="{viewcount}">{viewcount}</span></strong>
	</small>
	<span class="browsing-users hidden">
		&bull;
		<small><span>[[category:browsing]]</span></small>
		<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
		<small class="hidden">
			<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
		</small>
	</span>
</div>

<div class="topic-main-buttons pull-right inline-block">
	<div class="loading-indicator" done="0" style="display:none;">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</div>

	<!-- IMPORT partials/topic/reply-button.tpl -->

	<!-- IF loggedIn -->
		<button component="topic/mark-unread" class="btn btn-default">
			<i class="fa fa-envelope"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[topic:mark_unread]]</span>
		</button>
	<!-- ENDIF loggedIn -->

	<!-- IMPORT partials/topic/watch.tpl -->

	<!-- IMPORT partials/topic/sort.tpl -->

	<!-- IMPORT partials/thread_tools.tpl -->
</div>
<div style="clear:both;"></div>