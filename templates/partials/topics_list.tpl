		<ul component="category" id="topics-container" data-nextstart="{nextStart}">
			{{{each topics}}}
			<li component="category/topic" class="category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
				<div class="panel panel-default topic-row">

					<!-- IF showSelect -->
					<i class="fa fa-fw fa-square-o pull-left select pointer" component="topic/select"></i>
					<!-- ENDIF showSelect -->

					<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->" class="pull-left">
						<!-- IF topics.thumb -->
						<img src="{topics.thumb}" class="avatar avatar-md" title="{topics.user.username}" />
						<!-- ELSE -->
						{buildAvatar(topics.user, "md", false)}
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
						<span class="topic-stats stats-votes">
							[[global:votes]]
							<strong class="human-readable-number" title="{topics.votes}">{topics.votes}</strong>
						</span>
						&bull;
						<span class="topic-stats stats-postcount">
							[[global:posts]]
							<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
						</span>
						&bull;
						<span class="topic-stats stats-viewcount">
							[[global:views]]
							<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
						</span>
						<!-- IF !template.category -->
						&bull;
						<span>
							<a href="{config.relative_path}/category/{topics.category.slug}"><span class="fa-stack" style="{function.generateCategoryBackground, topics.category}"><i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span> {topics.category.name}</a>
						</span>
						&bull;
						<span>
							<!-- IF topics.user.uid -->
							<a href="{config.relative_path}/user/{topics.user.userslug}">{topics.user.username}</a>
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
							<a href="<!-- IF topics.teaser.user.userslug -->{config.relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">{buildAvatar(topics.teaser.user, "sm", false, "teaser-pic")}</a>
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
			{{{end}}}
		</ul>
