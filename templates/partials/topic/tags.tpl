{{{each tags}}}
<a href="{config.relative_path}/tags/{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.valueEscaped}</span><span class="tag-topic-count">{tags.score}</span></a>
{{{end}}}