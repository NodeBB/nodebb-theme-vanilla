
<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-md-9">
		<!-- IF !allowed -->
		<div class="alert alert-warning">
			[[error:chat-restricted]]
		</div>
		<!-- ENDIF !allowed -->
		<!-- IF meta -->
		<div component="chat/messages" class="panel panel-default expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
			<div class="panel-heading">
				<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
				<h2 class="panel-title">[[modules:chat.message-history]]</h2>
			</div>
			<div class="panel-body">
				<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
				<ul class="chat-content">
					<!-- IMPORT partials/chat_messages.tpl -->
					<span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
				</ul>
				<div class="input-group">
					<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
					<span class="input-group-btn">
						<button class="btn btn-primary" type="button" data-action="send">[[modules:chat.send]]</button>
					</span>
				</div>
			</div>
		</div>
		<!-- ELSE -->
		<div class="alert alert-info">
			[[modules:chat.no-messages]]
		</div>
		<!-- ENDIF meta -->
	</div>
	<div class="col-md-3 hidden-sm hidden-xs">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">[[modules:chat.contacts]]</h2>
			</div>
			<div class="panel-body">
				<ul component="chat/contacts" class="chats-list">
					<!-- BEGIN contacts -->
					<!-- IMPORT partials/chat_contact.tpl -->
					<!-- END contacts -->
				</ul>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2 class="panel-title">[[modules:chat.recent-chats]]</h2>
			</div>
			<div class="panel-body">
				<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
					<!-- BEGIN chats -->
					<!-- IMPORT partials/chat_contact.tpl -->
					<!-- END chats -->
				</ul>
			</div>
		</div>
	</div>
</div>