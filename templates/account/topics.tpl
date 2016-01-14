<div class="account">
	<!-- IMPORT partials/account_menu.tpl -->

	<!-- IF !topics.length -->
		<div class="alert alert-warning">{noItemsFoundKey}</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
