# Parsing HTML with Nokogiri

How can we use Ruby to interact with, filter, or traverse HTML? Let's play around with [Nokogiri](http://nokogiri.org). 

`gem install nokogiri`

### Playground #1 in Pry:

```
require 'nokogiri'
require 'open-uri'

html = open('https://www.turing.io')
doc  = Nokogiri::HTML(html)
```

What is `doc`? What does it represent? What information does it include?

### Playground #2 in Pry:

```
require 'nokogiri'
require 'open-uri'

html = open('https://www.turing.io')
doc  = Nokogiri::HTML(html)

images = doc.css('img')
```

What does the `images` variable represent? How many images are there? What information are you given by Nokogiri about these images? Can you write a loop that gathers the `src` of each image? Use the example below for reference:

```
doc.css('a').map do |a|
  a['href']
end
```

### Playground #3 in Pry:

```
require 'nokogiri'
require 'open-uri'

html = open('https://www.turing.io')
doc  = Nokogiri::HTML(html)

div   = doc.at_css('div')
divs  = doc.css('div')
```

What is the difference between `.at_css` and `.css`? 

### Playground #4 in Pry:

```
require 'nokogiri'
require 'open-uri'

html = open('https://www.turing.io')
doc  = Nokogiri::HTML(html)

var1 = doc.css('.container')
var2 = doc.css('.container p')
var3 = doc.css('.container p').text
```

What is the difference between `var1`, `var2`, and `var3`? What do '.container' and 
'.container p' refer to? 

### Optional

What else can you do with Nokogiri? 

Check out the Bastards Book of Ruby [Nokogiri documentation](http://ruby.bastardsbook.com/chapters/html-parsing/).
