<div class="unread">

	<div class="clearfix">
		<!-- IMPORT partials/breadcrumbs.tpl -->

		<div class="btn-toolbar">
			<div class="pull-left">
				<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			</div>

			<div class="markread btn-group pull-right {{{ if !topics.length }}}hidden{{{ end }}}">
			<!-- IMPORT partials/category-selector-right.tpl -->
			</div>

			<!-- IMPORT partials/category-filter-right.tpl -->

			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name} <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					{{{each filters}}}
					<li role="presentation" class="category {{{if filters.selected}}}selected{{{end}}}">
						<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>

	<hr />

	<div class="category row">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">
			<strong>[[unread:no_unread_topics]]</strong>
		</div>

		<a href="{config.relative_path}/{selectedFilter.url}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>
