<div class="col-xs-3 text-left pull-right">
	<div class="input-group">
		<input type="text" class="form-control" placeholder="Search" name="query" value="" id="search-text">
		<span id="search-button" class="input-group-addon search-button"><i class="fa fa-search"></i></span>
	</div>
</div>

<button class="btn btn-primary" data-action="new"><i class="fa fa-plus"></i> [[groups:new_group]]</button>

<div class="groups list row" id="groups-list">
	<!-- IF groups.length -->
	<!-- IMPORT partials/groups/list.tpl -->
	<!-- ELSE -->
	<div class="col-xs-12">
		<div class="alert alert-warning">
		[[groups:no_groups_found]]
		</div>
	</div>
	<!-- ENDIF groups.length -->
</div>
