<!DOCTYPE html>
<html>
<head>
	<title>kDNS Managment GUI</title>
	{{ stylesheet_link('css/bootstrap.min.css') }}
	{{ stylesheet_link('css/all.css') }}
	{{ stylesheet_link('css/style.css') }}
</head>
<body>
	{{ content() }}
	{{ javascript_include("js/jquery-3.3.1.min.js") }}
	{{ javascript_include("js/popper.js") }}
	{{ javascript_include("js/bootstrap.min.js") }}
	{{ javascript_include("js/app.js") }}
	{{ javascript_include("js/sha256.js") }}
</body>
</html>
