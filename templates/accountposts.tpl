
<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[user:has_no_posts]]</div>
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
					<p>{posts.content}</p>

					<div>
						<small>
							<span class="pull-right">
								[[global:posted_in_ago, ../../category/{posts.category.slug}, {posts.category.icon}, {posts.category.name}, {posts.relativeTime}]] &bull;
								<a href="../../topic/{posts.tid}/#{posts.pid}">[[global:read_more]] <i class="fa fa-chevron-circle-right"></i></a>
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