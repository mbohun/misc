create_gallery
==============

##story
This was created purely out of frustration back in 2002 or whatever when I wanted to make a web gallery; all web gallery making/serving software felt rather like a manual to installing a pile of crap onto your box. I did not want to install mysql, php, etc. with all their dependencies only to show a simple generate HTML page with some links and thumbnails.
Although this script is fully functional, consider it rather a collection of notes on basic usage of BASH and ImageMagick. Here is how it works:

1.  create some 'root' dir for the gallery, mkdir ~/gallery
2.  cp create_gallery.sh default.css main.css ~/gallery
3.  cd ~/gallery
4.  create subdirs with images (supported formats are jpeg, png, gif, bmp)
5.  run the script ./create_gallery - that should generate thumbnails and HTML pages with links

[EXAMPLE](http://users.on.net/~mbohun/gfx)
