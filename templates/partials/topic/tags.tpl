{{{each tags}}}
<a href="{config.relative_path}/tags/{tags.valueEncoded}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.value}">{tags.valueEscaped}</span><span class="tag-topic-count">{tags.score}</span></a>
{{{end}}}