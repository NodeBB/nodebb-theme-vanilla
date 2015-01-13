
<!-- IMPORT partials/account_menu.tpl -->

<div class="users account">
	<div>
		<!-- BEGIN following -->
		<div class="users-box">
			<a href="{relative_path}/user/{following.userslug}"><img src="{following.picture}" class="img-thumbnail"/></a>
			<br/>
			<div class="user-info">
				<a href="{relative_path}/user/{following.userslug}">{following.username}</a>
				<br/>
				<div title="reputation" class="reputation">
					<span class='formatted-number'>{following.reputation}</span>
					<i class='fa fa-star'></i>
				</div>
				<div title="post count" class="post-count">
					<span class='formatted-number'>{following.postcount}</span>
					<i class='fa fa-pencil'></i>
				</div>
			</div>
		</div>

		<!-- END following -->
	</div>
	<!-- IF !following.length -->
	<div class="alert alert-warning">[[user:follows_no_one]]</div>
	<!-- ENDIF !following.length -->
</div>

