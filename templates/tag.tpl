
<input type="hidden" template-variable="tag" value="{tag}" />

<div class="tag">
	<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li><a href="{relative_path}/tags">[[tags:tags]]</a></li>
		<li class="active">{tag}</li>
	</ol>

	<!-- IF !topics.length -->
	<div class="alert alert-warning">
		<strong>[[tags:no_tag_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		</div>
	</div>
</div>