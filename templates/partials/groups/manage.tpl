<!-- IF current -->
<ul class="nav nav-tabs" role="tablist">
	<li role="presentation" class="active"><a href="#basic" aria-controls="basic" role="tab" data-toggle="tab">Basic Settings</a></li>
	<li role="presentation"><a href="#pending" aria-controls="pending" role="tab" data-toggle="tab">Pending Memberships</a></li>
</ul>
<!-- ENDIF current -->
<div class="row tab-content container-fluid">
	<div role="tabpanel" class="tab-pane active" id="basic" >
		<br /> <!-- Just some padding -->
		<form role="form">
			<div class="form-group col-xs-6">
				<label for="name">Group Name</label>
				<input class="form-control" type="text" id="name" name="name" <!-- IF current.name -->value="{current.name}"<!-- ENDIF current.name --> />
			</div>
			<div class="form-group col-xs-6">
				<label for="cover">Cover Photo</label>
				<input class="form-control" type="file" id="cover" name="cover" />
			</div>
			<div class="form-group col-xs-12">
				<label for="description">Group Description</label>
				<input class="form-control" type="text" id="description" name="description" <!-- IF current.description -->value="{current.description}"<!-- ENDIF current.description --> />
			</div>
			<div class="form-group col-xs-12 user-title-option">
				<label for="userTitle">[[groups:details.badge_text]]</label>
				<input class="form-control" name="userTitle" id="userTitle" type="text" value="{current.userTitle}"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled --> />
			</div>
			<div class="form-group col-xs-12 user-title-option">
				<label>[[groups:details.badge_preview]]</label><br />
				<span class="label<!-- IF !userTitleEnabled --> hide<!-- ENDIF !userTitleEnabled -->" style="background-color: {current.labelColor}"><i class="fa {current.icon} icon"></i> <!-- IF group.userTitle -->{current.userTitle}<!-- ELSE -->{current.name}<!-- ENDIF group.userTitle --></span>

				<button type="button" class="btn btn-default btn-sm" data-action="icon-select"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled -->>[[groups:details.change_icon]]</button>
				<button type="button" class="btn btn-default btn-sm" data-action="color-select"<!-- IF !userTitleEnabled --> disabled<!-- ENDIF !userTitleEnabled -->>[[groups:details.change_colour]]</button>
				<input type="hidden" name="labelColor" value="<!-- IF group.labelColor -->{current.labelColor}<!-- ENDIF group.labelColor -->" />
				<input type="hidden" name="icon" value="<!-- IF group.icon -->{current.icon}<!-- ENDIF group.icon -->" />
				<div id="icons" style="display:none;">
					<div class="icon-container">
						<div class="row fa-icons">
							<i class="fa fa-doesnt-exist"></i>
							<!-- IMPORT partials/fontawesome.tpl -->
						</div>
					</div>
				</div>
			</div>
			<div class="checkbox col-xs-12">
				<hr />
				<label>
					<input name="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled-->> <strong>[[groups:details.userTitleEnabled]]</strong>
					<div class="help-block">
						A publicly displayed badge allows users to select this group to display next to their posts
					</div>
				</label>
			</div>
			<div class="checkbox col-xs-12">
				<label>
					<input id="private" name="private" type="checkbox" <!-- IF current.private -->checked="checked"<!-- ENDIF current.private --> /> <strong>Make this group private</strong>
					<div class="help-block">
						Private groups require owner approval before new members can join.
					</div>
				</label>
			</div>
			<div class="checkbox col-xs-12">
				<label>
					<input id="hidden" name="hidden" type="checkbox" <!-- IF current.hidden -->checked="checked"<!-- ENDIF current.hidden --> /> <strong>Prevent non-members from viewing this group</strong>
					<div class="help-block">
						Hidden groups are not publicly displayed in the main group listing, and cannot be accessed directly except by members themselves.
					</div>
				</label>
			</div>
		</form>
	</div>
	<!-- IF current -->
	<div role="tabpanel" class="tab-pane pending-users" id="pending">
		<br /> <!-- Just some padding -->
		<table class="table table-striped table-hover" id="pending-members"></table>
	</div>
	<!-- ENDIF current -->
</div>