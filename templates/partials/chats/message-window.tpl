<!-- IF roomId -->
<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">
	<div component="chat/header">
		<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
		<button class="close controlsToggle" component="expanded-chat/controlsToggle"><i class="fa fa-gear"></i></button>

		<div class="controls hide" component="expanded-chat/controls">
			<!-- IF showUserInput -->
			<div class="users-tag-container">
				<input class="users-tag-input" type="text" class="form-control" placeholder="[[modules:chat.add-users-to-room]]" tabindex="4"/>
			</div>
			<!-- ENDIF showUserInput -->

			<input class="form-control" component="chat/room/name" value="{roomName}" <!-- IF !isOwner -->disabled<!-- ENDIF !isOwner -->/>
			<hr />
		</div>
		<span class="members">
			[[modules:chat.chatting_with]]:
			<!-- BEGIN users -->
			<a href="{config.relative_path}/uid/{../uid}">{../username}</a><!-- IF !@last -->,<!-- END -->
			<!-- END -->
		</span>
	</div>
	<ul class="chat-content">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<div component="chat/composer">
		<div class="input-group">
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
			<span class="input-group-btn">
				<button class="btn btn-primary" type="button" data-action="send">[[modules:chat.send]]</button>
			</span>
		</div>
		<span component="chat/message/length">0</span>/<span>{maximumChatMessageLength}</span>
	</div>
</div>
<!-- ELSE -->
<div class="alert alert-info">
	[[modules:chat.no-messages]]
</div>
<!-- ENDIF roomId -->