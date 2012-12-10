if firefox, google-chrome fails to display .svgz file-s, add this to your `.htaccess` file on the server; opera works fine

```
AddType image/svg+xml svg svgz
AddEncoding gzip svgz
```

