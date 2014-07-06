<div class="col-sm-9">
	<!-- IF messages.length -->
	<div class="panel panel-default expanded-chat" data-uid="{chatData.uid}">
		<div class="panel-heading">
			<h2 class="panel-title">[[modules:chat.message-history]]</h2>
		</div>
		<div class="panel-body">
			<ul class="well well-sm">
				<!-- BEGIN messages -->
				<li class="chat-message clear" data-uid="{messages.fromuid}">
					<span class="chat-timestamp pull-right timeago" title="{messages.timestampISO}"></span>
					<a href="/user/{messages.fromUser.userslug}"><img class="chat-user-image" src="{messages.fromUser.picture}"></a>
					<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
					<div class="message-body">{messages.content}</div>
				</li>
				<!-- END messages -->
				<span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {chatData.username}]]</span>
			</ul>
			<div class="input-group">
				<input type="text" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">Send</button>
				</span>
			</div>
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
			<h2 class="panel-title">[[modules:chat.contacts]]</h2>
		</div>
		<div class="panel-body">
			<ul class="chats-list">
				<!-- BEGIN contacts -->
				<li data-username="{contacts.username}" data-uid="{contacts.uid}">
					<img class="user-img" src="{contacts.picture}">
					<i class="fa fa-circle status {contacts.status}"></i>
					<span>{contacts.username}</span>
				</li>
				<!-- END contacts -->
			</ul>
		</div>
	</div>
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
