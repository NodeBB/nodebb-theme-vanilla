
<div class="categories">
	<h1><i class="fa fa-folder"></i> Categories
		<div class="pull-right">
			<button class="btn btn-default" id="revertChanges">Revert Changes</button>
			<button class="btn btn-primary" id="addNew">New Category</button>
		</div>
	</h1>
	<hr />
	<ul class="nav nav-pills">
		<li class='active'><a href='/admin/categories/active'>Active</a></li>
		<li class=''><a href='/admin/categories/disabled'>Disabled</a></li>
	</ul>

	<div class="row admin-categories">
		<ul class="col-md-12" id="entry-container">
		<!-- BEGIN categories -->
			<li data-cid="{categories.cid}" class="entry-row">
				<div class="well">
					<form class="form">
						<div class="row">
							<div class="col-sm-2 hidden-xs text-center">
								<div class="preview-box" style="
									<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
									<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
									color: {categories.color};
									background-size:cover;
								">
									<div class="icon">
										<i data-name="icon" value="{categories.icon}" class="fa {categories.icon} fa-2x"></i>
									</div>
								</div><br />
								<button type="button" data-name="image" data-value="{categories.image}" class="btn btn-default upload-button"><i class="fa fa-upload"></i> Image</button>
								<!-- IF categories.image -->
								<br/>
								<small class="pointer delete-image"><i data-name="icon" value="fa-times" class="fa fa-times"></i> Delete Image</small>
								<!-- ENDIF categories.image -->
							</div>
							<div class="col-sm-10">
								<h3 data-edit-target="#cid-{categories.cid}-name"><span>{categories.name}</span> <small><i class="fa fa-edit"></i></small></h3>
								<input id="cid-{categories.cid}-name" type="text" class="form-control hide" placeholder="Category Name" data-name="name" value="{categories.name}" />
								<h4 data-edit-target="#cid-{categories.cid}-description"><span>{categories.description}</span> <small><i class="fa fa-edit"></i></small></h4>
								<input id="cid-{categories.cid}-description" data-name="description" placeholder="Category Description" value="{categories.description}" class="form-control category_description input-sm description hide"></input>

								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-bgColor">Background Colour</label>
										<input id="cid-{categories.cid}-bgColor" placeholder="#0059b2" data-name="bgColor" value="{categories.bgColor}" class="form-control category_bgColor" />
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-color">Text Colour</label>
										<input id="cid-{categories.cid}-color" placeholder="#fff" data-name="color" value="{categories.color}" class="form-control category_color" />
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-imageClass">Image Class</label>
											<select id="cid-{categories.cid}-imageClass" class="form-control" data-name="imageClass" data-value="{categories.imageClass}">
											<option value="auto">auto</option>
											<option value="cover">cover</option>
											<option value="contain">contain</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-class">Custom Class</label>
										<input id="cid-{categories.cid}-class" type="text" class="form-control" placeholder="col-md-6 col-xs-6" data-name="class" value="{categories.class}" />
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-numRecentReplies"># of Recent Replies Displayed</label>
										<input id="cid-{categories.cid}-numRecentReplies" type="text" class="form-control" placeholder="2" data-name="numRecentReplies" value="{categories.numRecentReplies}" />
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="cid-{categories.cid}-link">External Link</label>
										<input id="cid-{categories.cid}-link" type="text" class="form-control" placeholder="http://domain.com" data-name="link" value="{categories.link}" />
									</div>
								</div>
								<div class="col-sm-8 col-xs-12">
									<div class="form-group">
										<div class="dropdown">
											<button type="button" class="btn btn-default" data-toggle="dropdown"><i class="fa fa-cogs"></i> Options</button>
											<ul class="dropdown-menu" role="menu">
												<li class="permissions"><a href="#"><i class="fa fa-ban"></i> Access Control</a></li>
												<hr />
												<li data-disabled="{categories.disabled}">
													<!-- IF categories.disabled -->
														<a href="#"><i class="fa fa-power-off"></i> Enable</a>
													<!-- ELSE -->
														<a href="#"><i class="fa fa-power-off"></i> Disable</a>
													<!-- ENDIF categories.disabled -->
												</li>
												<li><a href="#" class="purge"><i class="fa fa-eraser"></i> Purge</a></li>
											</ul>


											<button class="btn btn-primary save">Save</button>

										</div>
									</div>
								</div>

								<input type="hidden" data-name="order" data-value="{categories.order}"></input>
							</div>
						</div>
					</form>
				</div>
			</li>

		<!-- END categories -->
		</ul>


	</div>

	<div id="new-category-modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="Add New Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h3>Create New Category</h3>
				</div>
				<div class="modal-body">
					<div>
						<form class='form-horizontal'>
							<div class="control-group">
								<label class="control-label" for="inputName">Name</label>
								<div class="controls">
									<input class="form-control" type="text" id="inputName" placeholder="Name" value="">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputDescription">Description</label>
								<div class="controls">
									<input class="form-control" type="text" id="inputDescription" placeholder="Description" value="">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputIcon">Icon</label>
								<div class="controls">
									<div class="icon">
										<i data-name="icon" value="fa-pencil" class="fa fa-pencil fa-2x"></i>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="create-category-btn" href="#" class="btn btn-primary btn-lg btn-block">Create</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<div id="category-permissions-modal" class="modal permissions-modal fade" tabindex="-1" role="dialog" aria-labelledby="Category Permissions" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h3>Category Permissions</h3>
				</div>
				<div class="modal-body">
					<p>The following users have access control permissions in this Category</p>
					<ul class="members"></ul>

					<hr />
					<form role="form">
						<div class="form-group">
							<label for="permission-search">User Search</label>
							<input class="form-control" type="text" id="permission-search" />
						</div>
					</form>
					<ul class="search-results users"></ul>

					<hr />
					<form role="form">
						<div class="form-group">
							<label for="permission-group-pick">User Groups</label>
						</div>
					</form>
					<ul class="search-results groups"></ul>

				</div>
			</div>
		</div>
	</div>

<div id="icons" style="display:none;">
	<div class="icon-container">
		<div class="row fa-icons">
			<i class="fa fa-doesnt-exist"></i>
			<!-- IMPORT partials/fontawesome.tpl -->
		</div>
	</div>
</div>
