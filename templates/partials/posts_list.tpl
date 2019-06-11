<ul component="posts" class="posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item" data-pid="{posts.pid}" data-uid="{posts.uid}">

		<div class="panel panel-default">
			<div class="panel-body">
				<a href="{config.relative_path}/user/{posts.user.userslug}">{buildAvatar(posts.user, "sm", true)}</a>

				<a href="{config.relative_path}/user/{posts.user.userslug}">
					<strong><span>{posts.user.username}</span></strong>
				</a>
				<div component="post/content" class="content">
					<p>{posts.content}</p>
					<p class="fade-out"></p>
				</div>
				<small>
					<span class="pull-right">
						<a href="{config.relative_path}/category/{posts.category.slug}">[[global:posted_in, {posts.category.name}]] <i class="fa {posts.category.icon}"></i> <span class="timeago" title="{posts.timestampISO}"></span></a> &bull;
						<a href="{config.relative_path}/post/{posts.pid}">[[global:read_more]]</a>
					</span>
				</small>
			</div>
		</div>

	</li>
	<!-- END posts -->
</ul>
<div component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>