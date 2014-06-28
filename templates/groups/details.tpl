<div class="groups details row">
	<div class="col-lg-6 col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">[[groups:details.title]]</h3>
			</div>
			<div class="panel-body">
				<h1>{group.name}</h1>
				<p>{group.description}</p>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">[[groups:details.members]]</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-hover members">
					<!-- BEGIN members -->
					<tr data-slug="{group.members.userslug}">
						<td>
							<img src="{group.members.picture}" />
						</td>
						<td class="member-name">
							{group.members.username}
						</td>
					</tr>
					<!-- END members -->
				</table>
			</div>
		</div>
	</div>
	<div class="col-lg-6 col-xs-12 latest-posts">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">[[groups:details.latest_posts]]</h3>
			</div>

			<div class="panel-body">
				<!-- IF !posts.length -->
				<div class="alert alert-info">[[groups:details.has_no_posts]]</div>
				<!-- ENDIF !posts.length -->

				<!-- BEGIN posts -->
				<!-- IF !@first --><hr class="clear" /><!-- ENDIF !@first -->
				<a href="{relative_path}/user/{posts.user.userslug}">
					<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
				</a>

				<a href="{relative_path}/user/{posts.user.userslug}">
					<strong><span>{posts.user.username}</span></strong>
				</a>
				<p>{posts.content}</p>

				<div>
					<small>
						<span class="pull-right">
							[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
							<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]] <i class="fa fa-chevron-circle-right"></i></a>
						</span>
					</small>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
</div>