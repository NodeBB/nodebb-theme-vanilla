<li component="post" class="posts-list-item" data-pid="{../pid}" data-uid="{../uid}">
    <div class="panel panel-default">
        <div class="panel-body">
            <a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(../user, "sm", true)}</a>

            <a href="{config.relative_path}/user/{../user.userslug}">
                <strong><span>{../user.username}</span></strong>
            </a>
            <div component="post/content" class="content">
                <p>{../content}</p>
                <p class="fade-out"></p>
            </div>
            <small>
                <span class="pull-right">
                    <a href="{config.relative_path}/category/{../category.slug}">[[global:posted_in, {../category.name}]] <i class="fa {../category.icon}"></i> <span class="timeago" title="{../timestampISO}"></span></a> &bull;
                    <a href="{config.relative_path}/post/{../pid}">[[global:read_more]]</a>
                </span>
            </small>
        </div>
    </div>
</li>