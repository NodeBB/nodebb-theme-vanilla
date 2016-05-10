<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<ul component="topic" id="post-container" class="posts" data-tid="{tid}" data-cid="{cid}">
		<!-- BEGIN posts -->
			<li component="post" class="post-row <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">

				<div class="col-md-1 profile-image-block hidden-xs hidden-sm sub-post">
					<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
						<!-- IF posts.user.picture -->
						<img itemprop="image" component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" class="img-thumbnail" />
						<!-- ELSE -->
						<div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
						<!-- ENDIF posts.user.picture -->
						<!-- IF posts.user.banned -->
						<span class="label label-danger">[[user:banned]]</span>
						<!-- ENDIF posts.user.banned -->
					</a>

					<!-- IMPORT partials/topic/badge.tpl -->

				</div>

				<div class="col-md-11 panel panel-default post-block topic-item">

					<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
						<!-- IF posts.user.picture -->
						<img itemprop="image" component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" class="img-thumbnail" />
						<!-- ELSE -->
						<div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
						<!-- ENDIF posts.user.picture -->
					</a>
					<h3 class="main-post">
						<p component="post/header" class="topic-title" itemprop="name"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span component="topic/title">{title}</span></p>
					</h3>

					<div class="topic-buttons">

						<div class="btn-group">

							<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
								<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
								<span class="visible-xs-inline">
									<!-- IF posts.user.picture -->
									<img class="" component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" width=18 height=18 />
									<!-- ELSE -->
									<div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
									<!-- ENDIF posts.user.picture -->
								</span>
								<span href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								<span class="caret"></span>
							</button>

						    <ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
								<!-- IF !posts.selfPost -->
								<!-- IF posts.user.userslug -->
								<!-- IF loggedIn -->
								<!-- IF !config.disableChat -->
								<li><a href="#" class="chat" component="post/chat"><i class="fa fa-comment"></i> [[topic:chat]]</a></li>
								<!-- ENDIF !config.disableChat -->
								<!-- ENDIF loggedIn -->
								<!-- ENDIF posts.user.userslug -->
								<!-- ENDIF !posts.selfPost -->
						    </ul>
						</div>


						<div class="btn-group">
							<!-- IF !posts.selfPost -->
							<button component="post/flag" class="btn btn-sm btn-default" type="button" title="[[topic:flag_title]]"><i class="fa fa-flag-o"></i></button>
							<!-- ENDIF !posts.selfPost -->
							<button component="post/favourite" data-favourited="{posts.favourited}" class="favourite favourite-tooltip btn btn-sm btn-default <!-- IF posts.favourited --> btn-warning <!-- ENDIF posts.favourited -->" type="button">
								<span class="favourite-text">[[topic:favourite]]</span>
								<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;

								<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
								<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
							</button>
						</div>

						<!-- IF !reputation:disabled -->
						<div class="btn-group">
							<button component="post/upvote" class="upvote btn btn-sm btn-default <!-- IF posts.upvoted --> upvoted btn-primary <!-- ENDIF posts.upvoted -->">
								<i class="fa fa-chevron-up"></i>
							</button>
							<button component="post/vote-count" class="votes btn btn-sm btn-default" data-votes="{posts.votes}">{posts.votes}</button>
							<!-- IF !downvote:disabled -->
							<button component="post/downvote" class="downvote btn btn-sm btn-default <!-- IF posts.downvoted --> downvoted btn-primary <!-- ENDIF posts.downvoted -->">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<!-- IF privileges.topics:reply -->
						<div class="btn-group">
							<button component="post/quote" class="btn btn-sm btn-default" type="button" title="[[topic:quote]]"><i class="fa fa-quote-left"></i></button>
							<button component="post/reply" class="btn btn-sm btn-primary" type="button">[[topic:reply]] <i class="fa fa-reply"></i></button>
						</div>
						<!-- ENDIF privileges.topics:reply -->

						<!-- IMPORT partials/topic/post-menu.tpl -->
					</div>

					<div component="post/content" class="post-content" itemprop="text">{posts.content}</div>
					<!-- IF posts.user.signature -->
					<div class="post-signature">{posts.user.signature}</div>
					<!-- ENDIF posts.user.signature -->

					<div class="post-info">
						<span class="pull-right">
							<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>

							<span component="post/editor" class="<!-- IF !posts.editor.username --> hidden<!-- ENDIF !posts.editor.username -->">| <strong><a href="{config.relative_path}/user/{posts.editor.userslug}">[[global:last_edited_by, {posts.editor.username}]]</a></strong> <span class="timeago" title="{posts.editedISO}"></span></span>
						</span>
						<span class="pull-left">
							[[global:reputation]]: <i class='fa fa-star'></i> <span component="user/reputation" data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span>&nbsp;|&nbsp;[[global:posts]]: <i class='fa fa-pencil'></i> <span class='formatted-number' component="user/postcount" data-uid="{posts.uid}" data-postcount="{posts.user.postcount}">{posts.user.postcount}</span>
							<!-- IF posts.user.custom_profile_info.length -->
								<!-- BEGIN custom_profile_info -->
								| {posts.user.custom_profile_info.content}
								<!-- END custom_profile_info -->
							<!-- ENDIF posts.user.custom_profile_info.length -->
						</span>
						<div style="clear:both;"></div>
					</div>
				</div>
				<div style="clear:both;"></div>
				<!-- IF !posts.index -->
				<div class="post-bar-placeholder"></div>
				<!-- ENDIF !posts.index -->
			</li>
		<!-- END posts -->
	</ul>

	<div class="well col-md-11 col-xs-12 pull-right post-bar">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<div class="visible-xs visible-sm pagination-block text-center">
		<div class="progress-bar"></div>
		<div class="wrapper">
			<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
			<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
			<span class="pagination-text"></span>
			<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>
		</div>
	</div>

</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
