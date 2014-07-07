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

		<div id="post-results" class="col-md-12" data-search-query="{search_query}">
			<!-- IF matchCount -->
			<div class="alert alert-info">[[search:results_matching, {matchCount}, {search_query}, {time}]] </div>
			<!-- ELSE -->
			<div class="alert alert-warning">[[topic:no_posts_found]]</div>
			<!-- ENDIF matchCount -->

			<!-- BEGIN results -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">

					<a href="{relative_path}/topic/{results.topic.slug}/{results.index}" class="search-result-text">
						<h4>{results.topic.title}</h4>
					</a>
					<div class="search-result-text">
						{results.content}
						<p class="fade-out"></p>
					</div>

					<small>
						<span class="pull-right footer">
							[[global:posted_in_ago, <a href="{relative_path}/category/{results.category.slug}"><i class="fa {results.category.icon}"></i> {results.category.name}</a>, <span class="timeago" title="{results.relativeTime}"></span>]]
						</span>
					</small>
				</div>
			</div>
			<!-- END results -->
		</div>
	</div>
</div>
