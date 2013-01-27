# Fish Tank 0.1

Fish Tank is an easy-to-use (I hope!) OS X GUI for the static blogging framework [Octopress](http://octopress.org "octopress").

Octopress is supposed to be the "blogging framework for hackers," where most blog administration tasks are done using text editors and the command line, so why make a GUI?

Static blogs have a lot of useful applications outside hackers, and Octopress is a good framework for creating them. Also, sometimes even hackers prefer a nice GUI, and there are some useful enhancements that only a GUI can offer.

Right now, I am working on supporting basic features like:

* Create a new blog with a "wizard" walkthrough 
* List, create, and delete blog posts
* Edit individual posts with a basic Markdown editor
* Edit the page template (colors, asides, etc.)
* Site generation, preview, and deployment

But later, I hope to add features like

* Import existing Octopress blogs and existing Markdown files (drag and drop posts)
* Integrated photo upload with Flickr API (to enable easy photo blogging)
* "Cloud" backup to GitHub, Dropbox, and maybe others
* Walkthroughs for setting up Disqus, Flickr, etc. 

#FAQ

##Wait a second, isn't this against the purpose of Octopress? I mean isn't Octopress the "framework for hackers"?

Well, yes and no. Just because you're a hacker doesn't *necessarily* mean that you want to crawl through a text file to change the color of your background, or run `rake` commands to upload your website.

Also, I think there are actually a lot of cases where even non-hackers could appreciate static sites. Though signing up for a Tumblr account is still probably the simplest way to get a website for most people, if you want to put a simple blog in your Google Drive or Dropbox, or at your domain name that a techie friend helped setup, then Fish Tank is the solution for you.  

I will also say that this harkens back to old WYSWIYG HTML-authorship tools like Microsoft Frontpage Express, except that instead of creating individual pages a novice user should be able to create a full static blog site (with all the fancy features of Octopress) to be hosted anywhere.

##Why Octopress?

It's nice.

# Setup

You have to init the submodules. 

# Known limitations

For now, I'm locking down the Octopress version for each release. I can't predict how updates to Octopress might break the manipulations the GUI does on the blog repository. 

I also don't support importing existing Octopress blogs now because I haven't decided how to deal with existing template modifications. 

# Copyright and License

Copyright 2013 Tyler Barth

See LICENSE.
