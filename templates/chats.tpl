<div class="row">
	<div class="col-md-9" component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="col-md-3 hidden-sm hidden-xs" component="chat/nav-wrapper">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="chat-search">
					<input class="form-control" type="text" component="chat/search" placeholder="[[users:enter_username]]" />
				</div>
				<ul component="chat/search/list" class="chat-search-list">

				</ul>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">[[modules:chat.recent-chats]]</h2>
			</div>
			<div class="panel-body">
				<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
					<!-- BEGIN rooms -->
					<!-- IMPORT partials/chats/recent_room.tpl -->
					<!-- END rooms -->
				</ul>
			</div>
		</div>
	</div>
</div>