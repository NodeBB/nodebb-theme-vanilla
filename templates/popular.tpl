<div class="popular">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IMPORT partials/category-filter.tpl -->

	<div class="btn-group pull-right <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		{selectedFilter.name} <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			{{{each filters}}}
			<li role="presentation" class="category">
				<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
			</li>
			{{{end}}}
		</ul>
	</div>

	<div class="btn-group pull-right <!-- IF !terms.length -->hidden<!-- ENDIF !terms.length -->">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		{selectedTerm.name} <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			{{{each terms}}}
			<li role="presentation" class="category">
				<a role="menu-item" href="{config.relative_path}/{terms.url}"><i class="fa fa-fw <!-- IF terms.selected -->fa-check<!-- ENDIF terms.selected -->"></i>{terms.name}</a>
			</li>
			{{{end}}}
		</ul>
	</div>

	<br />

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_popular_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>