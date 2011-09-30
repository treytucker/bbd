// var cssLink = document.createElement("link") 
// cssLink.href = "/public/stylesheets/iframe.css"; 
// cssLink .rel = "stylesheet"; 
// cssLink .type = "text/css"; 
// frames['#largewidget_232_iframe'].document.head.appendChild(cssLink);


var d= frames['#largewidget_232_iframe'].document.head;
        d.open();
        d.write(
            '<link type="text/css" rel="stylesheet" href="/public/stylesheets/iframe_hack.css">'
        );
        d.close();
