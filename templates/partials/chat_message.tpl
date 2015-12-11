				<li component="chat/message" class="chat-message clear" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
					<div class="message-header">
						<span class="chat-timestamp pull-right timeago" title="{messages.timestampISO}"></span>
						<a href="{config.relative_path}/user/{messages.fromUser.userslug}">
							<!-- IF messages.fromUser.picture -->
							<img class="chat-user-image" src="{messages.fromUser.picture}">
							<!-- ELSE -->
							<div class="user-icon chat-user-image" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
							<!-- ENDIF messages.fromUser.picture -->
						</a>
						<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
					</div>
					<div component="chat/message/body" class="message-body">
						<!-- IF ../edited -->
						<small class="text-muted pull-right" title="[[global:edited]] {../editedISO}"><i class="fa fa-edit"></i></span></small>
						<!-- ENDIF ../edited -->
						<!-- IF ../self -->
						<div class="pull-right btn-group controls">
							<button class="btn btn-xs btn-warning" data-action="edit"><i class="fa fa-pencil"></i></button>
							<button class="btn btn-xs btn-danger" data-action="delete"><i class="fa fa-times"></i></button>
						</div>
						<!-- ENDIF ../self -->
						{messages.content}
					</div>
				</li>