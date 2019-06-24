
<div class="category row">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">

		<!-- IMPORT partials/breadcrumbs.tpl -->

		<div class="subcategories row">
			{{{each children}}}
			<!-- IMPORT partials/category_child.tpl -->
			{{{end}}}
		</div>

		<div class="header category-tools clearfix">
			<!-- IF privileges.topics:create -->
			<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
				<!-- IF !loggedIn -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF !loggedIn -->
			<!-- ENDIF privileges.topics:create -->

			<a href="{url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>

			<span class="pull-right" component="category/controls">
				<!-- IMPORT partials/category_watch.tpl -->
				<!-- IMPORT partials/category_sort.tpl -->
				<!-- IMPORT partials/category_tools.tpl -->
			</span>
		</div>

		<!-- IF !topics.length -->
		<!-- IF privileges.topics:create -->
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		<!-- ENDIF privileges.topics:create -->
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>

	<!-- IF topics.length -->
	<div data-widget-area="sidebar" class="col-md-3 col-xs-12 category-sidebar <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
	<!-- ENDIF topics.length -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
