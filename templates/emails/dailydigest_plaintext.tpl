Hello {username},

<!-- IF notifications.length -->
You have some unread notifications from {site_title}:

<!-- BEGIN notifications -->
* {notifications.text} ({url}{notifications.path})
<!-- END notifications -->

===
<!-- ENDIF notifications.length -->

Latest topics from {site_title}

<!-- IF recent.length -->
<!-- BEGIN recent -->
* {recent.title} ({url}/topic/{recent.slug})
<!-- END recent -->
<!-- ELSE -->
* There have been no active topics in the past day
<!-- ENDIF recent.length -->

Click here to visit {site_title}: {url}


Thanks!

{site_title}

===

This digest was sent to you due to your subscription settings. Click on the following link to alter those settings: {url}/user/{username}/settings