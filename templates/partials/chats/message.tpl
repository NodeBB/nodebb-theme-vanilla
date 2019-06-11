<li component="chat/message" class="chat-message clear<!-- IF ../deleted --> deleted<!-- END -->" data-index="{messages.index}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
	<div class="message-header">
		<a href="{config.relative_path}/user/{messages.fromUser.userslug}">{buildAvatar(messages.fromUser, "md", true, "not-responsive")}</a>
		<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
		<span class="chat-timestamp timeago" title="{messages.timestampISO}"></span>
	</div>
	<div component="chat/message/body" class="message-body">
		<!-- IF messages.edited -->
		<small class="text-muted pull-right" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></small>
		<!-- ENDIF messages.edited -->
		<!-- IF !config.disableChatMessageEditing -->
		<!-- IF messages.self -->
		<div class="pull-right btn-group controls">
			<button class="btn btn-xs btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
			<button class="btn btn-xs btn-link" data-action="delete"><i class="fa fa-times"></i></button>
			<button class="btn btn-xs btn-link" data-action="restore"><i class="fa fa-repeat"></i></button>
		</div>
		<!-- ENDIF messages.self -->
		<!-- ENDIF !config.disableChatMessageEditing -->
		{messages.content}
	</div>
</li>