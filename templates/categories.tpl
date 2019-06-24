<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="motd">
	<div data-widget-area="motd">
		{{{each widgets.motd}}}
		{{widgets.motd.html}}
		{{{end}}}
	</div>
</div>

<div class="row categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length --> clearfix">
		<div class="row">
			{{{each categories}}}
			<div component="categories/category" class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">
				<h4 class="category-title">
					<!-- IF !categories.link -->
					<span class="badge {categories.unread-class}">{categories.totalTopicCount} </span>
					<!-- ENDIF !categories.link -->

					<!-- IF categories.link -->
					<a href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a href="{config.relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
					{categories.name}
					</a>
				</h4>

				<!-- IF categories.link -->
				<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
				<!-- ELSE -->
				<a style="color: {categories.color};" href="{config.relative_path}/category/{categories.slug}" itemprop="url">
				<!-- ENDIF categories.link -->
					<div
						id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
						title="{categories.description}"
						style="
							<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
							<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
						"
					>
						<div id="category-{categories.cid}" class="category-slider-{categories.numRecentReplies}">
							<!-- IF categories.icon -->
							<div class="category-box"><i class="fa {categories.icon} fa-4x"></i></div>
							<!-- ENDIF categories.icon -->
							<div class="category-box" itemprop="description">{categories.descriptionParsed}</div>

							{{{each posts}}}
							<div component="category/posts" class="category-box">
								<div class="post-preview">
									{buildAvatar(categories.posts.user, "sm", false, "pull-left")}
									<p class=""><strong>{categories.posts.user.username}</strong>: {categories.posts.content}</p>
								</div>
							</div>
							{{{end}}}
							<!-- IF categories.icon -->
							<div class="category-box"><i class="fa {categories.icon} fa-4x"></i></div>
							<!-- ENDIF categories.icon -->
						</div>
					</div>
				</a>
			</div>
			{{{end}}}
		</div>
	</div>

	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
