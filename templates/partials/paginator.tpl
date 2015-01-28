<div class="text-center">
	<ul class="pagination pagination-lg">
		<li class="previous pull-left <!-- IF !pagination.prev.active -->disabled<!-- ENDIF !pagination.prev.active -->">
			<a href="?page={pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
		</li>

		<!-- BEGIN pages -->
			<li class="page <!-- IF pagination.pages.active -->active<!-- ENDIF pagination.pages.active -->">
				<a href="?page={pagination.pages.page}">{pagination.pages.page}</a>
			</li>
		<!-- END pages -->

		<li class="next pull-right <!-- IF !pagination.next.active -->disabled<!-- ENDIF !pagination.next.active -->">
			<a href="?page={pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
		</li>
	</ul>
</div>