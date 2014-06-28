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

			<h3>[[global:topics]]</h3>

			<!-- IF topic_matches -->
			<small>[[search:results_matching, {topic_matches}, {search_query}]]</small>
			<!-- ELSE -->
			<div class="alert alert-info">[[topic:no_topics_found]]</div>
			<!-- ENDIF topic_matches -->

			<!-- BEGIN topics -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">
					<a href="{relative_path}/topic/{topics.slug}" class="search-result-text">
						<h4>{topics.title}</h4>
					</a>

					<div>
						<small>
							<span class="pull-right">
								[[global:posted_in_ago, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>]]
							</span>
						</small>
					</div>
				</div>
			</div>
			<!-- END topics -->
		</div>

		<div id="post-results" class="col-md-12" data-search-query="{search_query}">
			<h3>[[global:posts]]</h3>

			<!-- IF post_matches -->
			<small>[[search:results_matching, {post_matches}, {search_query}]]</small>
			<!-- ELSE -->
			<div class="alert alert-info">[[topic:no_posts_found]]</div>
			<!-- ENDIF post_matches -->

			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">

					<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}" class="search-result-text">
						<h4>{posts.topic.title}</h4>
					</a>
					<div class="search-result-text">
						{posts.content}
						<p class="fade-out"></p>
					</div>

					<small>
						<span class="pull-right footer">
							[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]]
						</span>
					</small>

				</div>
			</div>
			<!-- END posts -->
		</div>
	</div>
</div>
