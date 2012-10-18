#!/bin/bash
#
# (c) 2007-2012 Martin Bohun
#
# Minimalist script for photo gallery generation.
#
# requirements:
#    BASH
#    ImageMagick (http://www.imagemagick.org) 
#

TITLE="Martin Bohun's gallery"

img_width=800
img_height=600
img_size="${img_width}x${img_height}>"

thumb_width=160
thumb_height=100
thumb_size="x${thumb_height}>"

function process_subdir() {

    if [ -a $1.gallery ]; then
	echo "gallery $1 exists" 
	return
    fi

    cd $1

    # create a .gallery file, this is a placeholder for something more intelligent
    echo "crap-xxx" > .gallery

    prefix=`basename $PWD`
    echo "basename:" $prefix

    echo "
<html>
   <head>
      <title>$prefix</title>
      <link rel=\"stylesheet\" href=\"../default.css\" type=\"text/css\"/>
   </head>
   
   <body>

" >> index.html

    for img in `ls | grep -i ".*\.\(gif\|jpg\|jpeg\|png\|pnm\|bmp\)$"`
    do
	img_name="${prefix}-${img}"
	thumb_color_name="thumb-c-${img_name}"

	convert -resize $img_size $img $img_name
	convert -resize $thumb_size $img_name -colorspace gray $thumb_color_name

	w=`identify -format "%w" $thumb_color_name`
	h=`identify -format "%h" $thumb_color_name`
	
	echo "
          <div class=\"image\">
             <a href=\"$img_name\">
                <img src=\"${thumb_color_name}\" border=\"0\" width=\"$w\" height=\"$h\" alt=\"${w}x${h}\"/>
             </a>
          </div>
    " >> index.html

    done

    echo "
      <a class=\"back_link\" href=\"../index.html\">Back to main galery page.</a>
   </body>
</html>

" >> index.html

    cd ..
}

echo "
<html>
   <head>
      <title>${TITLE}</title>
      <link rel=\"stylesheet\" href=\"main.css\" type=\"text/css\"/>
   </head>
   <body>
      <h1>${TITLE}</h1>
" > index.html

font_color_r=0
font_color_g=255
font_color_b=0

for subdir in `ls -F | grep "/" | sort -r`
do
    process_subdir $subdir
    echo "      <a href=\"${subdir}index.html\" style=\"color: rgb(${font_color_r},${font_color_g},${font_color_b})\">$subdir</a><br/>" >> index.html

    [ $font_color_g -gt 45 ] &&
    	font_color_g=`expr $font_color_g - 10`

done

echo "
   </body>
</html>
" >> index.html
