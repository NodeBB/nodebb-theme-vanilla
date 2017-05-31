<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="motd">
	<div data-widget-area="motd"></div>
</div>

<div class="row categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-12 col-sm-12 clearfix" data-has-widget-class="col-lg-9 col-sm-12" data-has-widget-target="sidebar">
		<div class="row">
			<!-- BEGIN categories -->
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

							<!-- BEGIN posts -->
							<div component="category/posts" class="category-box">
								<div class="post-preview">
									<img src="{categories.posts.user.picture}" class="pull-left" />
									<p class=""><strong>{categories.posts.user.username}</strong>: {categories.posts.content}</p>
								</div>
							</div>
							<!-- END posts -->
							<!-- IF categories.icon -->
							<div class="category-box"><i class="fa {categories.icon} fa-4x"></i></div>
							<!-- ENDIF categories.icon -->
						</div>
					</div>
				</a>
			</div>
			<!-- END categories -->
		</div>
	</div>

	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>