# Parsing HTML with Nokogiri

`gem install nokogiri`

### Playground #1:

```
require 'nokogiri'
require 'open-uri'

html = open('http://turing.io')
doc  = Nokogiri::HTML(html)
```

What is `doc`? What does it represent? What information does it include?

### Playground #2:

```
require 'nokogiri'
require 'open-uri'

html = open('http://turing.io')
doc  = Nokogiri::HTML(html)

images = doc.css('img')
```

What is `images`? How many are there? What information are you given by Nokogiri about these images?

### Playground #3:

```
require 'nokogiri'
require 'open-uri'

html = open('http://turing.io')
doc  = Nokogiri::HTML(html)

div   = doc.at_css('div')
divs  = doc.css('div')
```

What is the difference between `.at_css` and `.css`? 

### Playground #4:

```
require 'nokogiri'
require 'open-uri'

html = open('http://turing.io')
doc  = Nokogiri::HTML(html)

var1 = doc.css('.mod-intro')
var2 = doc.css('.mod-intro p')
var3 = doc.css('.mod-intro p').text
```

What is the difference between `var1`, `var2`, and `var3`? What do '.mod-intro' and 
'.mod-intro p' refer to? 


### Optional

What else can you do with Nokogiri? 

Check out the Bastards Book of Ruby [Nokogiri documentation](http://ruby.bastardsbook.com/chapters/html-parsing/).
