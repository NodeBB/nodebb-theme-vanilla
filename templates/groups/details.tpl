<div class="groups details row">
	<div class="col-xs-12 group-cover" style="background-image: url({group.cover:url}); background-position: {group.cover:position};">
		<div class="change">[[groups:cover-change]] <i class="fa fa-fw fa-pencil-square-o"></i></div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<div class="instructions">[[groups:cover-instructions]]</div>
	</div>
	<div class="col-lg-6 col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<!-- IF group.private -->
					<span class="label label-warning pull-right">[[groups:details.private]]</span>
					<!-- ELSE -->
					<span class="label label-primary pull-right">[[groups:details.public]]</span>
					<!-- ENDIF group.private -->
					<i class="fa fa-list-ul"></i> [[groups:details.title]]
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
				<h3 class="panel-title"><i class="fa fa-users"></i> [[groups:details.members]]</h3>
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
				<h3 class="panel-title"><i class="fa fa-clock-o"></i> [[groups:details.pending]]</h3>
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
		<div widget-area="left"></div>
	</div>
	<div class="col-lg-6 col-xs-12">
		<!-- IF group.isOwner -->
		<div class="panel panel-default">
			<div class="panel-heading pointer" data-toggle="collapse" data-target=".options">
				<h3 class="panel-title">
					<i class="fa fa-caret-down pull-right"></i>
					<i class="fa fa-cogs"></i> [[groups:details.owner_options]]
				</h3>
			</div>

			<div class="panel-body options collapse">
				<form role="form">
					<div class="form-group">
						<label for="name">Group Name</label>
						<input class="form-control" name="name" id="name" type="text" value="{group.name}" />
					</div>
					<div class="form-group">
						<label for="name">Description</label>
						<input class="form-control" name="description" id="description" type="text" value="{group.description}" />
					</div>
					<div class="form-group">
						<label>Badge Preview</label>
						<span class="label" style="background-color: {group.labelColor}"><i class="fa {group.icon} icon"></i> {group.userTitle}</span>

						<button type="button" class="btn btn-default btn-sm" data-action="icon-select">Change Icon</button>
						<button type="button" class="btn btn-default btn-sm" data-action="color-select">Change Colour</button>
						<input type="hidden" name="labelColor" value="<!-- IF group.labelColor -->{group.labelColor}<!-- ENDIF group.labelColor -->" />
						<input type="hidden" name="icon" value="<!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" />
						<div id="icons" style="display:none;">
							<div class="icon-container">
								<div class="row fa-icons">
									<i class="fa fa-doesnt-exist"></i>
									<!-- IMPORT partials/fontawesome.tpl -->
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="userTitle">Badge Text</label>
						<input class="form-control" name="userTitle" id="userTitle" type="text" value="{group.userTitle}" />
					</div>
					<hr />
					<div class="checkbox">
						<label>
							<input name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private-->> <strong>Private</strong>
							<p class="help-block">
								If enabled, joining of groups requires approval from a group owner
							</p>
						</label>
					</div>

					<button class="btn btn-link btn-xs pull-right" type="button" data-action="delete">Delete Group</button>
					<button class="btn btn-primary" type="button" data-action="update">Save</button>
				</form>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-edit"></i> [[groups:details.latest_posts]]</h3>
			</div>

			<div class="panel-body latest-posts">
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
		<div widget-area="right"></div>
	</div>
</div>

<input type="hidden" template-variable="group_name" value="{group.name}" />
<input type="hidden" template-variable="is_owner" value="{group.isOwner}" />