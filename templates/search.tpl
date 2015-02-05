<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="search">
	<div class="row">

		<div class="well col-md-12">
			<form id="advanced-search">
				<div class="form-group">
					<label>[[global:search]]</label>
					<input type="text" class="form-control" id="search-input" placeholder="[[global:search]]">
				</div>
				<div class="form-group">
					<label>[[search:in]]</label>
					<select id="search-in" class="form-control">
						<option value="posts">[[global:posts]]</option>
						<option value="users">[[global:users]]</option>
						<option value="tags">[[tags:tags]]</option>
					</select>
				</div>

				<div class="form-group post-search-item<!-- IF hidePostedBy --> hide<!-- ENDIF hidePostedBy -->">
					<label>[[search:by]]</label>
					<input type="text" class="form-control" id="posted-by-user" placeholder="[[search:posted-by]]">
				</div>

				<div class="form-group post-search-item">
					<label>[[search:in-categories]]</label>
					<select multiple class="form-control" id="posted-in-categories">
						<option value="all">All Categories</option>
						<option value="watched">Watched Categories</option>
						<!-- BEGIN categories -->
						<option value="{categories.cid}">{categories.name}</option>
						<!-- END categories -->
					</select>
					<input type="checkbox" id="search-children"> [[search:search-child-categories]]
				</div>

				<div class="form-group post-search-item">
					<label>[[search:reply-count]]</label>
					<div class="row">
						<div class="col-md-6">
							<select id="reply-count-filter" class="form-control">
								<option value="atleast">[[search:at-least]]</option>
								<option value="atmost">[[search:at-most]]</option>
							</select>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" id="reply-count">
						</div>
					</div>
				</div>

				<button type="submit" class="btn btn-default">[[global:search]]</button>
			</form>
		</div>

		<div id="results" class="col-md-12" data-search-query="{search_query}">
			<!-- IF matchCount -->
			<div class="alert alert-info">[[search:results_matching, {matchCount}, {search_query}, {time}]] </div>
			<!-- ELSE -->
			<div class="alert alert-warning">[[search:no-matches]]</div>
			<!-- ENDIF matchCount -->

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
							<a href="{relative_path}/users/{posts.user.userslug}"><img class="user-img" title="{posts.user.username}" src="{posts.user.picture}"/></a>
							[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]]
						</span>
					</small>
				</div>
			</div>
			<!-- END posts -->

			<!-- IF users.length -->
			<ul id="users-container" class="users-container">
			<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<!-- ENDIF users.length -->

			<!-- IF tags.length -->
			<!-- IMPORT partials/tags_list.tpl -->
			<!-- ENDIF tags.length -->
		</div>
	</div>
</div>
