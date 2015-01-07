<div class="tags">
	<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li class="active">[[tags:tags]]</li>
	</ol>

	<!-- IF !tags.length -->
	<div class="alert alert-warning">
		<strong>[[tags:no_tags]]</strong>
	</div>
	<!-- ENDIF !tags.length -->

	<input class="form-control" type="text" id="tag-search" placeholder="[[global:search]]"/>
	<br/>

	<div class="category row">
		<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>