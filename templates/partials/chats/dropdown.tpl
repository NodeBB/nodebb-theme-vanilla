<!-- IF rooms.length -->
{{{each rooms}}}
<li class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->" data-roomid="{rooms.roomId}">
	<a data-ajaxify="false"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></a>

	<ul class="members">
		{{{each rooms.users}}}<li><a href="{config.relative_path}/user/{rooms.users.userslug}" class="user-link">{buildAvatar(rooms.users, "sm")}</a></li>{{{end}}}
		<!-- IF !rooms.lastUser.uid -->
		<li>[[modules:chat.no-users-in-room]]</li>
		<!-- ENDIF !rooms.lastUser.uid -->
	</ul>


</li>
{{{end}}}
<!-- ELSE -->
<li class="no_active"><a href="#">No active chats</a></li>
<!-- ENDIF rooms.length -->