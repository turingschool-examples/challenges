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

* Add a `public` folder within `app` (`app/public`): this folder will contain your CSS, JavaScripts, and images
* Inside the public folder, add a `css` folder (`/app/public/css`)
* Create a file `app/public/css/style.css` and add your CSS styles there. 
* Create a file `views/layout.erb`. This will automatically render around any other `.erb` file that you specify to render in your route block. This file will also contain the link to your CSS file. 

```erb
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="css/style.css">
  <title>My Sinatra Application</title>
</head>
<body>
  <div class="container">
    <%= yield %>
  </div>
</body>
</html>
```