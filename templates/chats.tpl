<div class="chats-full">
	<div component="chat/nav-wrapper">
		<div class="chat-search dropdown">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:enter_username]]" data-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu"></ul>
		</div>
		<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<!-- IMPORT partials/chats/recent_room.tpl -->
			<!-- END rooms -->
		</ul>
	</div>
	<div component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
</div>