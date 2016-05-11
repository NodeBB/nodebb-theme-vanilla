		<ul component="category" id="topics-container" data-nextstart="{nextStart}">
			<!-- BEGIN topics -->
			<li component="category/topic" class="category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
				<div class="col-md-12 col-xs-12 panel panel-default topic-row">

					<!-- IF showSelect -->
					<i class="fa fa-fw fa-square-o pull-left select pointer" component="topic/select"></i>
					<!-- ENDIF showSelect -->

					<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->" class="pull-left">
						<!-- IF topics.thumb -->
						<img src="{topics.thumb}" class="user-img" title="{topics.user.username}" />
						<!-- ELSE -->
						<!-- IF topics.user.picture -->
						<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}" class="user-img" title="{topics.user.username}" />
						<!-- ELSE -->
						<div class="user-icon" style="background-color: {topics.user.icon:bgColor};" title="{topics.user.username}">{topics.user.icon:text}</div>
						<!-- ENDIF topics.user.picture -->
						<!-- ENDIF topics.thumb -->
					</a>

					<h3>
						<strong>
							<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"></i>
							<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"></i>
						</strong>
						<!-- IF !topics.noAnchor -->
						<a href="{config.relative_path}/topic/{topics.slug}">
							<span class="topic-title">{topics.title}</span>
						</a>
						<!-- ELSE -->
						<span class="topic-title">{topics.title}</span>
						<!-- ENDIF !topics.noAnchor -->
					</h3>

					<small>
						<span class="topic-stats">
							[[global:posts]]
							<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
						</span>
						&bull;
						<span class="topic-stats">
							[[global:views]]
							<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
						</span>
						<!-- IF !template.category -->
						&bull;
						<span>
							<a href="{config.relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>
						</span>
						&bull;
						<span>
							<!-- IF topics.user.uid -->
							<a href="{config.relative_path/user/{topics.user.userslug}">{topics.user.username}</a>
							<!-- ELSE -->
							[[global:guest]]
							<!-- ENDIF topics.user.uid -->
						</span>
						&bull;
						<span class="timeago" title="{topics.timestampISO}"></span>
						<!-- ENDIF !template.category -->

						<span class="pull-right" component="topic/teaser">
							<!-- IF topics.unreplied -->
							<a href="{config.relative_path}/topic/{topics.slug}" itemprop="url">[[category:no_replies]]</a>
							<!-- ELSE -->
							<!-- IF topics.teaser.pid -->
							<a href="<!-- IF topics.teaser.user.userslug -->{config.relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
								<!-- IF topics.teaser.user.picture -->
								<img class="teaser-pic" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}"/>
								<!-- ELSE -->
								<div class="teaser-pic user-icon" style="background-color: {topics.teaser.user.icon:bgColor};" title="{topics.teaser.user.username}">{topics.teaser.user.icon:text}</div>
								<!-- ENDIF topics.teaser.user.picture -->
							</a>
							<a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
								<span class="timeago" title="{topics.teaser.timestampISO}"></span>
							</a>
							<!-- ENDIF topics.teaser.pid -->
							<!-- ENDIF topics.unreplied -->
						</span>
						<!-- IMPORT partials/category_tags.tpl -->
					</small>
				</div>
			</li>
			<!-- END topics -->
		</ul>
