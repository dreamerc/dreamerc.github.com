---
layout: post
title: Obsidian template
date: 2023-10-03 15:02 +0800
categories: update
---
# update

- `template/posts_date-title`

```markdown
---
layout: post
title: title
date: "{{ "{{" }} date }} {{ "{{"}} time }} +0800"
categories: update
---
- ...
```

- add `_config.yml`

```yml
exclude: template/
```

- escape Liquid template tags
	- `{{ "{{" }} date }}` =  `{{"{{"}} "{{"{{"}}" }} date }}`