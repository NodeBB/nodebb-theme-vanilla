<div class="composer">

	<div class="composer-container">
		<div class="title-container">
			<input class="title form-control" type="text" tabIndex="1" placeholder="[[topic:composer.title_placeholder]]" />
		</div>

		<!-- IF allowTopicsThumbnail -->
		<i class="fa fa-picture-o pull-right topic-thumb-btn topic-thumb-toggle-btn hide" title="[[topic:composer.thumb_title]]"></i>
		<div class="topic-thumb-container center-block hide">
			<form id="thumbForm" method="post" class="topic-thumb-form form-inline" enctype="multipart/form-data">
				<img class="topic-thumb-preview"></img>
				<div class="form-group">
					<label for="topic-thumb-url">[[topic:composer.thumb_url_label]]</label>
					<input type="text" id="topic-thumb-url" class="form-control" placeholder="[[topic:composer.thumb_url_placeholder]]" />
				</div>
				<div class="form-group">
					<label for="topic-thumb-file">[[topic:composer.thumb_file_label]]</label>
					<input type="file" id="topic-thumb-file" class="form-control" />
				</div>
				<div class="form-group topic-thumb-ctrl">
					<i class="fa fa-spinner fa-spin hide topic-thumb-spinner" title="[[topic:composer.uploading]]"></i>
					<i class="fa fa-times topic-thumb-btn hide topic-thumb-clear-btn" title="[[topic:composer.thumb_remove]]"></i>
					<input id="thumbUploadCsrf" type="hidden" name="_csrf">
				</div>
			</form>
		</div>
		<!--  ENDIF allowTopicsThumbnail -->

		<div class="row category-tag-row">
			<!-- IF isTopic -->
			<div class="col-lg-3 category-list-container">
				<select class="form-control category-list"></select>
			</div>
			<!-- ENDIF isTopic -->
			<!-- IF showTags -->
			<div class="tags-container <!-- IF isTopic -->col-lg-9<!-- ELSE -->col-lg-12<!-- ENDIF isTopic-->">
				<input class="tags" type="text" class="form-control" placeholder="[[tags:enter_tags_here]]" tabIndex="2"/>
			</div>
			<!-- ENDIF showTags -->
		</div>

		<div class="btn-toolbar formatting-bar">
			<div class="btn-group">
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-bold"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-italic"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-list"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-link"></i></span>

				<!--[if gte IE 9]><!-->
					<span class="btn btn-link img-upload-btn hide" tabindex="-1">
						<i class="fa fa-picture-o"></i>
					</span>
					<span class="btn btn-link file-upload-btn hide" tabindex="-1">
						<i class="fa fa-upload"></i>
					</span>
				<!--<![endif]-->

				<span class="btn btn-link help hidden" tab-index="-1"><i class="fa fa-question"></i></span>

				<form id="fileForm" method="post" enctype="multipart/form-data">
					<input id="postUploadCsrf" type="hidden" name="_csrf">

					<!--[if gte IE 9]><!-->
						<input type="file" id="files" name="files[]" multiple class="gte-ie9 hide"/>
					<!--<![endif]-->
					<!--[if lt IE 9]>
						<input type="file" id="files" name="files[]" class="lt-ie9 hide" value="Upload"/>
					<![endif]-->

				</form>

			</div>
			<div class="btn-group pull-right action-bar">
				<button class="btn btn-default" data-action="discard" tabIndex="5"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>
				<button class="btn btn-primary" data-action="post" tabIndex="4"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
			</div>
		</div>

		<div class="row write-preview-container">
			<div class="col-md-6 col-sm-12 write-container">
				<textarea class="write" tabIndex="3"></textarea>
			</div>
			<div class="col-md-6 hidden-sm hidden-xs preview-container">
				<div class="preview well"></div>
			</div>
		</div>

		<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>

		<div class="resizer"><div class="trigger text-center"><i class="fa fa-chevron-up"></i></div></div>
	</div>
</div>