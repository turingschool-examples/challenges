# Chisel - A Markdown Parser

## Introduction

HTML is an amazing tool for marking up documents, but it's not very fun for
writing content.

Several years ago, John Gruber proposed [the idea of Markdown](http://daringfireball.net/projects/markdown/syntax). It's a style of
text formatting that's less obtrusive than writing HTML, is easy to remember,
and is highly readable even when not converted to HTML. Here's an example:

```markdown
# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."
```

A typical user writes a *markdown document*, but here your challenge is to
write a *markdown parser*.

### Markdown Parsers

There are markdown parsers available for just about every language you can
imagine. In the Ruby world some of the best known are Redcarpet, Rdiscount, and
RedCloth. For any production system, unless you really take Chisel to the next
level, you're [strongly encouraged to use RedCarpet](https://github.com/vmg/redcarpet).

But let's figure out how a parser is built.

### An Interaction Model

We could setup Chisel to work with files, but then we have to get into File I/O.
Let's instead focus on strings like this:

```ruby
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

parser = Chisel.new
output = parser.parse(document)
puts output
```

And the `puts` line at the end would output the following:

```html
<h1>My Life in Desserts</h1>

<h2>Chapter 1: The Beginning</h2>

<p>
  "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
  <strong>Food &amp; Wine</strong> this place has been packed every night."
</p>
```

Got it?

## The Challenge

This project fits well with the concepts of spiraling design.

### Level 1 - Text Basics

A chunk of text is defined as one or more lines of content which does not
contain any blank lines. For example, this is one chunk of text:

```markdown
This is the first line of the paragraph.
This is the second line of the same paragraph.
```

While these are two chunks of text:

```markdown
This is the first line of the first paragraph.

This is the first line of the second paragraph.
```

Build a Chisel class which implements the `parse` method and returns HTML with
the following elements supported:

* A chunk of text starting with `#`, `##`, `###`, `####`, or `#####` is turned
into an HTML header (`<h1>`, `<h2>`) with the header level corresponding to the
number of `#` symbols
* A chunk of text *not* starting with `#` is turned into a paragraph

### Level 2 - Formatting

With Level 1 completed, move on to Level 2:

* Within either a header or a paragraph, any word or words wrapped in `*` should
be enclosed in `<em>` tags
* Within either a header or a paragraph, any word or words wrapped in `**` should
be enclosed in `<strong>` tags

For extra challenge, consider scenarios like this: `My *emphasized and **stronged** text* is awesome.`

### Level 3 - Lists

Often in writing we want to create unordered (bullet) or ordered (numbered) lists.

Build support for **unordered lists** like this:

```markdown
My favorite cuisines are:

* Sushi
* Barbeque
* Mexican
```

Which should output:

```html
<p>
  My favorite cuisines are:
</p>

<ul>
  <li>Sushi</li>
  <li>Barbeque</li>
  <li>Mexican</li>
</ul>
```

Then build support for **ordered lists** which use numbers for the markers.
Though, confusingly, the numbers themselves don't matter. Some authors use `1.`
to mark every list element and let the HTML renderer (aka browser) figure things out:

```markdown
My favorite cuisines are:

1. Sushi
2. Barbeque
3. Mexican
```

Which is turned into:

```html
<p>
  My favorite cuisines are:
</p>

<ol>
  <li>Sushi</li>
  <li>Barbeque</li>
  <li>Mexican</li>
</ol>
```

That's it for now, but if you're hungry for more consider supporting:

* [Supporting Blockquotes](http://daringfireball.net/projects/markdown/syntax#blockquote)
* [Supporting Code Blocks](http://daringfireball.net/projects/markdown/syntax#precode)
* [Supporting Links](http://daringfireball.net/projects/markdown/syntax#link)
* [Supporting Images](http://daringfireball.net/projects/markdown/syntax#img)
