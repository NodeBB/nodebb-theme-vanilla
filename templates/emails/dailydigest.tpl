<p>
	Hello {username},
</p>

<p>
	You have some unread notifications from {site_title}:
</p>

<ul>
	<!-- BEGIN notifications -->
	<li style="text-decoration: none; list-style-type: none; padding-bottom: 0.5em;">
		<a href="{url}{notifications.path}"><img style="vertical-align: middle; width: 16px; height: 16px; padding-right: 1em;" src="{notifications.image}" />{notifications.text}</a>
	</li>
	<!-- END notifications -->
</ul>

<hr />

<p>Latest topics from {site_title}</p>
<ul>
	<!-- BEGIN recent -->
	<li style="text-decoration: none; list-style-type: none; padding-bottom: 0.5em;">
		<a href="{url}/topic/{recent.slug}"><img style="vertical-align: middle; width: 16px; height: 16px; padding-right: 1em;" src="{recent.teaser.picture}" title="{recent.teaser.username}" /> {recent.title}</a>
	</li>
	<!-- END recent -->
</ul>

<p>
	<a href="{url}">Click here to visit {site_title}</a>
</p>

<p>
	Thanks!<br />
	<strong>{site_title}</strong>
</p>