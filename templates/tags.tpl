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

	<input class="form-control" type="text" id="tag-search"/>
	<br/>

	<div class="category row">
		<div class="col-md-12 clearfix tag-list">
			<!-- BEGIN tags -->
			<a href="{relative_path}/tags/{tags.value}" data-value="{tags.value}" class="pull-left">
				<h3>
				<span class="label label-info">{tags.value}</span>
				 <small>x</small><span class="tag-topic-count">{tags.score}</span>
				</h3>
			</a>
			<!-- END tags -->
		</div>
	</div>
</div>