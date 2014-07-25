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
		<div class="col-md-12 clearfix tag-list">
			<!-- BEGIN tags -->
			<h3 class="pull-left">
				<a href="{relative_path}/tags/{tags.value}" data-value="{tags.value}"><span class="tag-item" data-tag="{tags.value}">&bull; {tags.value}</span></a>
				<small>x</small><span class="tag-topic-count">{tags.score}</span>
			</h3>
			<!-- END tags -->
		</div>
	</div>
</div>