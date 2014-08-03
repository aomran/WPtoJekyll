WPtoJekyll
==========

A script that takes in wordpress XML and outputs a folder of posts in markdown, ready for Jekyll. 

### How do I use it?

1. [Export your wordpress blog to xml](http://en.support.wordpress.com/export/)
1. `$ git clone git@github.com:aomra015/WPtoJekyll.git`
1. `$ cd WPtoJekyll`
1. Replace the example `export.xml` file with your own.
1. `$ bundle install`
1. `$ ruby export.rb`

You should see a folder with the Wordpress posts.
