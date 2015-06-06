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

### Experimenting with Markdown

There are markdown parsers available for just about every language you can
imagine. In the Ruby world some of the best known are Redcarpet, Rdiscount, and
RedCloth.

Let's experiment with RedCarpet. Start by installing the gem:

```
$ gem install redcarpet
```

Then let's start IRB and load the gem:

```
$ irb
> require 'redcarpet'
```

Many rendering engines are...over engineered. They are built to support multiple "rendering engines" with the
idea that you might want to output things other than HTML. So with RedCarpet you need to initialize a *renderer*:

```ruby
renderer = Redcarpet::Render::HTML.new
```

Then we take that renderer and connect it with the Markdown engine:

```ruby
engine = Redcarpet::Markdown.new(renderer)
```

Now we finally have a `Markdown` instance stored in the `engine` variable. Now you're ready to render markdown into
HTML:

```ruby
> engine.render("*hello* world")
 => "<p><em>hello</em> world</p>\n"
```

Why did we get that result? We called the `render` method. It's expecting to take in markdown. How does it interpret that
input?

* The string has no new lines, so it's one "block"
* The block doesn't start with `#`, so it's a paragraph (`<p>`) not a header. The whole output will be wrapped in
`<p>` and `</p>`
* Part of the input, `*hello*`, is wrapped in asterisks. That's the Markdown marker for emphasis. So that fragment `hello`
will be wrapped in `<em>` and `</em>`

Let's consider a more complex example. A way, way more complex example. Parse this document:

```ruby
> document = 1 # Fetch the document over http
> document[0..100]  # Get a sense of the content
> engine.render(document)[0..150]  # See some of the rendered output
```

Can you build up a parser like that? Let's find out!

### An Interaction Model

We could setup Chisel to work with files, but then we have to get into File I/O.
Let's start with direct string input and build up to supporting this interaction:

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

You should *iterate* towards that functionality. Try and build your parser in small, validated pieces.
Build a system of little inter-dependent machines that each have one job in the process.

### Restrictions

* Don't use any regular expressions
* Only use existing markdown parsers to generate sample output or to validate your output

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

* Implement a `render_to_file` that takes both the document to render and a filename to write the output to
* [Supporting Blockquotes](http://daringfireball.net/projects/markdown/syntax#blockquote)
* [Supporting Code Blocks](http://daringfireball.net/projects/markdown/syntax#precode)
* [Supporting Links](http://daringfireball.net/projects/markdown/syntax#link)
* [Supporting Images](http://daringfireball.net/projects/markdown/syntax#img)
