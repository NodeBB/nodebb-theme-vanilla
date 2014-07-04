<div class="col-sm-9">
	<!-- IF messages.length -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title">[[modules:chat.chatting_with]]</h2>
		</div>
		<div class="panel-body">
			<ul id="chat-content" class="well well-sm">
				<!-- BEGIN messages -->
				<li class="chat-message clear" data-uid="{messages.fromuid}">
					<span class="chat-timestamp pull-right timeago" title="{messages.timestampISO}"></span>
					<a href="/user/{messages.fromUser.userslug}"><img class="chat-user-image" src="{messages.fromUser.picture}"></a>
					<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
					<br />
				</li>
				<!-- END messages -->
				<span class="user-typing hide"><i class="fa fa-pencil"></i> <span class="text"></span></span>
			</ul>
		</div>
	</div>
	<!-- ELSE -->
	<div class="alert alert-info">
		[[modules:chat.no-messages]]
	</div>
	<!-- ENDIF messages.length -->
</div>
<div class="col-sm-3 hidden-xs">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title">[[modules:chat.recent-chats]]</h2>
		</div>
		<div class="panel-body">
			<ul class="chats-list">
			<!-- BEGIN chats -->
				<li data-username="{chats.username}" data-uid="{chats.uid}">
					<img class="user-img" src="{chats.picture}">
					<i class="fa fa-circle status {chats.status}"></i>
					<span>{chats.username}</span>
				</li>
			<!-- END chats -->
			</ul>
		</div>
	</div>
</div>
