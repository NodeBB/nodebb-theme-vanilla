				<li class="chat-message clear" data-uid="{messages.fromuid}">
					<span class="chat-timestamp pull-right timeago" title="{messages.timestampISO}"></span>
					<a href="/user/{messages.fromUser.userslug}"><img class="chat-user-image" src="{messages.fromUser.picture}"></a>
					<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
					<div class="message-body">{messages.content}</div>
				</li>