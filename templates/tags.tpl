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

	<div class="category row">
		<div class="col-md-12 clearfix">
			<!-- BEGIN tags -->
			<a href="{relative_path}/tags/{tags.name}" class="pull-left">
				<h3>
				<span class="label label-info">{tags.name}</span>
				 <small>x</small><span class="tag-topic-count">{tags.topicCount}</span>
				</h3>
			</a>
			<!-- END tags -->
		</div>
	</div>
</div>