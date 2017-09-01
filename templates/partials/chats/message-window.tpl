<!-- IF roomId -->
<div component="chat/messages" class="panel panel-default expanded-chat" data-roomid="{roomId}">
	<div class="panel-heading">
		<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
		<h2 class="panel-title">[[modules:chat.message-history]]</h2>
	</div>
	<div class="panel-body">
		<!-- IF showUserInput -->
		<div class="users-tag-container">
			 <input class="users-tag-input" type="text" class="form-control" placeholder="enter users here" tabindex="4"/>
		 </div>
		 <!-- ENDIF showUserInput -->
		 <input class="form-control" component="chat/room/name" value="{roomName}" <!-- IF !isOwner -->disabled<!-- ENDIF !isOwner -->/>

		<ul class="chat-content">
			<!-- IMPORT partials/chats/messages.tpl -->
		</ul>
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