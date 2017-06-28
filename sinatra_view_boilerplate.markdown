### More helpful NOT FOUND page

In your controller: 

```ruby
  not_found do
    erb :error
  end
```

Add an `error.erb` file inside of your views folder:

```erb
<h1>An Error Occured</h1>

<h3>Params</h3>
<table>
  <tr>
    <th>Request Verb</th>
    <td><%= request.request_method %></td>
  </tr>
  <tr>
    <th>Request Path</th>
    <td><%= request.path %></td>
  </tr>
  <tr>
    <th colspan=2>Parameters</th>
  </tr>
  <% request.params.each do |key, value| %>
    <tr>
      <td><%= key %></td>
      <td><%= value %></td>
    </tr>
  <% end %>
</table>
```


### Layout

**NOTE**: If you have cloned down the Robot World starter repository, you already have a stylesheet and a layout built for you. You can use the below instructions if you're starting from scratch and want to add a stylesheet and layout to your project. 

* Add a `public` folder within `app` (`app/public`): this folder will contain your CSS, JavaScripts, and images
* Create a file `app/public/style.css` and add your CSS styles there. 
* Create a file `views/layout.erb`. This will automatically render around any other `.erb` file that you specify to render in your route block. This file will also contain the link to your CSS file. 

```erb
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="/style.css">
  <title>My Sinatra Application</title>
</head>
<body>
  <div class="container">
    <%= yield %>
  </div>
</body>
</html>
```
