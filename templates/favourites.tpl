<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[topic:favourites.has_no_favourites]]</div>
	<!-- ENDIF !posts.length -->

	<div class="row">
		<div class="col-md-12 user-favourite-posts" data-nextstart="{nextStart}">
			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">
					<a href="../../user/{posts.user.userslug}">
						<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					</a>

					<a href="../../user/{posts.user.userslug}">
						<strong><span>{posts.user.username}</span></strong>
					</a>
					<div class="content">{posts.content}</div>

					<div>
						<small>
							<span class="pull-right">
								<a href="../../topic/{posts.topic.slug}#{posts.pid}">[[global:posted]]</a>
								[[global:in]]
								<a href="../../category/{posts.category.slug}">
									<i class="fa {posts.category.icon}"></i> {posts.category.name}
								</a>
								<span class="timeago" title="{posts.relativeTime}"></span>
							</span>
						</small>
					</div>
				</div>
			</div>
			<!-- END posts -->
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />