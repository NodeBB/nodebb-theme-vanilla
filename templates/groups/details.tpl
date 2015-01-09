<div class="groups details row">
	<div class="col-lg-6 col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<!-- IF group.private -->
					<span class="label label-warning pull-right">[[groups:details.private]]</span>
					<!-- ELSE -->
					<span class="label label-primary pull-right">[[groups:details.public]]</span>
					<!-- ENDIF group.private -->
					[[groups:details.title]]
				</h3>
			</div>
			<div class="panel-body">
				<h1>{group.name}</h1>
				<p>{group.description}</p>
				<div class="pull-right">
					{function.membershipBtn, group}
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">[[groups:details.members]]</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-hover members">
					<!-- BEGIN members -->
					<tr data-uid="{group.members.uid}">
						<td>
							<a href="../user/{group.members.userslug}"><img src="{group.members.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="../user/{group.members.userslug}">{group.members.username}</a> <i title="[[groups:owner]]" class="fa fa-star text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>
						</td>
						<!-- IF group.isOwner -->
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									More <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="#" data-ajaxify="false" data-action="toggleOwnership">
											Grant/Rescind Ownership
										</a>
									</li>
								</ul>
							</div>
						</td>
						<!-- ENDIF group.isOwner -->
					</tr>
					<!-- END members -->
				</table>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">[[groups:details.pending]]</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-hover pending">
					<!-- BEGIN pending -->
					<tr data-uid="{group.pending.uid}">
						<td>
							<a href="../user/{group.pending.userslug}"><img src="{group.pending.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="../user/{group.pending.userslug}">{group.pending.username}</a>
						</td>
						<!-- IF group.isOwner -->
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									More <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="accept">Accept</a></li>
									<li><a href="#" data-ajaxify="false" data-action="reject">Reject</a></li>
								</ul>
							</div>
						</td>
						<!-- ENDIF group.isOwner -->
					</tr>
					<!-- END pending -->
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
				<div class="user-post clearfix" data-pid="{posts.pid}">
					<a href="{relative_path}/user/{posts.user.userslug}">
						<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					</a>

					<a href="{relative_path}/user/{posts.user.userslug}">
						<strong><span>{posts.user.username}</span></strong>
					</a>
					<div class="content">
						{posts.content}
						<p class="fade-out"></p>
					</div>
					<small>
						<span class="pull-right footer">
							[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
							<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a>
						</span>
					</small>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
</div>

<input type="hidden" template-variable="group_name" value="{group.name}" />