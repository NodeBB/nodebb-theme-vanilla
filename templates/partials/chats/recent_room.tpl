<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	<div>
		<p component="chat/title"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></p>
		<small class="teaser-timestamp timeago text-muted" title="{../teaser.timestampISO}"></small>
		<!-- IF ../teaser.content -->
		<!-- END -->
		<ul class="members">
			<!-- BEGIN rooms.users -->
			<li>
				<a href="{config.relative_path}/user/{rooms.users.userslug}">
					<!-- IF rooms.users.picture -->
					<img class="user-img avatar avatar-sm avatar-rounded" src="{rooms.users.picture}" title="{rooms.users.username}">
					<!-- ELSE -->
					<div class="user-img avatar avatar-sm avatar-rounded" title="{rooms.users.username}" style="background-color: {rooms.users.icon:bgColor};">{rooms.users.icon:text}</div>
					<!-- ENDIF rooms.users.picture -->
				</a>
			</li>
			<!-- END rooms.users -->
			<!-- IF !rooms.lastUser.uid -->
			<li>[[modules:chat.no-users-in-room]]</li>
			<!-- ENDIF !rooms.lastUser.uid -->
		</ul>
	</div>
</li>