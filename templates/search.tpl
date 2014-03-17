<ol class="breadcrumb">
	<li><a href="{relative_path}/">[[global:home]]</a></li>
	<li class="active">[[global:search]]</li>
</ol>


<form id="mobile-search-form" class="navbar-form navbar-right visible-xs" role="search" method="GET" action="">
	<div class="" id="search-fields">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
		</div>
		<button type="submit" class="btn btn-default hide">[[global:search]]</button>
	</div>
</form>

<div class="search">
	<div class="row">

		<div id="topic-results" class="col-md-12" data-search-query="{search_query}">

			<h3>[[topic:topics]]</h3>

			<!-- IF topic_matches -->
			<small>{topic_matches} result(s) matching "{search_query}"</small>
			<!-- ELSE -->
			<div class="alert alert-info">[[topic:no_topics_found]]</div>
			<!-- ENDIF topic_matches -->

			<!-- BEGIN topics -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">


					<a href="../../topic/{topics.slug}" class="search-result-text">
						<h4>{topics.title}</h4>
					</a>

					<div>
						<small>
							<span class="pull-right">
								<a href="../../user/{topics.user.userslug}"><img title="{topics.user.username}" class="img-rounded user-img" src="{topics.user.picture}"></a>
								<a href="../../topic/{topics.slug}"> [[global:posted]]</a>
								[[global:in]]
								<a href="../../category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>
								<span class="timeago" title="{topics.relativeTime}"></span>
							</span>
						</small>
					</div>
				</div>
			</div>
			<!-- END topics -->
		</div>

		<div id="post-results" class="col-md-12" data-search-query="{search_query}">
			<h3>[[topic:posts]]</h3>

			<!-- IF post_matches -->
			<small>{post_matches} result(s) matching "{search_query}"</small>
			<!-- ELSE -->
			<div class="alert alert-info">[[topic:no_posts_found]]</div>
			<!-- ENDIF post_matches -->

			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">

					<a href="../../topic/{posts.topic.slug}#{posts.pid}" class="search-result-text">
						<h4>{posts.topic.title}</h4>
					</a>
					<div class="search-result-text">
						{posts.content}
					</div>
					<div>
						<small>
							<span class="pull-right">
								<a href="../../user/{posts.user.userslug}">
									<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
								</a>
								<a href="../../topic/{posts.topic.slug}#{posts.pid}"> [[global:posted]]</a>
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
