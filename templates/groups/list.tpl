<div class="groups row">
	<!-- BEGIN groups -->
	<div class="col-lg-4 col-md-6 col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">{groups.name} <small>{groups.memberCount}</small></h3>
			</div>
			<div class="panel-body">
				<a href="{relative_path}/groups/{groups.name}" class="pull-right btn btn-default">[[groups:view_group]]</a>
				<ul class="members">
					<!-- BEGIN members -->
					<li>
						<a href="{relative_path}/user/{groups.members.userslug}">
							<img src="{groups.members.picture}" title="{groups.members.userslug}" />
						</a>
					</li>
					<!-- END members -->
					<!-- IF groups.truncated -->
					<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
					<!-- ENDIF groups.truncated -->
				</ul>
			</div>
		</div>
	</div>
	<!-- END groups -->
</div>