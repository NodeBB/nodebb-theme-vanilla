<div class="inline-block">
	<small class="topic-stats">
		<span>[[category:posts]]</span>
		<strong><span class="topic-post-count" class="human-readable-number" title="{postcount}">{postcount}</span></strong> |
		<span>[[category:views]]</span>
		<strong><span class="human-readable-number" title="{viewcount}">{viewcount}</span></strong> |
		<span>[[category:browsing]]</span>
	</small>
	<div class="thread_active_users active-users inline-block"></div>
</div>

<div class="topic-main-buttons pull-right inline-block">
	<div class="loading-indicator" done="0" style="display:none;">
		<span class="hidden-xs-inline">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</div>
	<!-- IF privileges.write -->
	<button class="btn btn-primary post_reply" type="button">[[topic:reply]]</button>
	<!-- ENDIF privileges.write -->
	<div class="btn-group thread-tools hide">
		<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">[[topic:thread_tools.title]] <span class="caret"></span></button>
		<ul class="dropdown-menu pull-right">
			<li><a href="#" class="markAsUnreadForAll"><i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
			<li><a href="#" class="pin_thread"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
			<li><a href="#" class="lock_thread"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
			<li class="divider"></li>
			<li><a href="#" class="move_thread"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
			<li><a href="#" class="fork_thread"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.fork]]</a></li>
			<li class="divider"></li>
			<li><a href="#" class="delete_thread"><span class="text-error"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</span></a></li>
			<!-- BEGIN thread_tools -->
			<li>
				<a href="#" class="{thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a>
			</li>
			<!-- END thread_tools -->
		</ul>
	</div>
</div>
<div style="clear:both;"></div>