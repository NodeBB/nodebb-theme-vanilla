<!-- IF topics.tags.length -->
	{{{each tags}}}
		<a href="{config.relative_path}/tags/{topics.tags.valueEncoded}"><span class="tag-item tag-class-{tags.class}" data-tag="{topics.tags.valueEscaped}">{topics.tags.valueEscaped}</span><span class="tag-topic-count">{topics.tags.score}</span></a>
	{{{end}}}
<!-- ENDIF topics.tags.length -->