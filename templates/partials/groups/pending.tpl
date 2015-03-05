<!-- IF pending.length -->
<!-- BEGIN pending -->
<tr data-uid="{pending.uid}">
	<td>
		<a href="{config.relative_path}/user/{pending.userslug}"><img src="{pending.picture}" /></a>
	</td>
	<td class="member-name">
		<a href="{config.relative_path}/user/{pending.userslug}">{pending.username}</a>
	</td>
	<td>
		<div class="btn-group pull-right">
			<button class="btn btn-success" data-action="accept">[[groups:pending.accept]]</button>
			<button class="btn btn-danger" data-action="reject">[[groups:pending.reject]]</button>
		</div>
	</td>
</tr>
<!-- END pending -->
<!-- ELSE -->
<div class="col-xs-12">
	<div class="alert alert-info">You have no members pending approval. Hooray!</div>
</div>
<!-- ENDIF pending.length -->