# Redmine Video Macro Plugin

This is a [Redmine](http://www.redmine.org) plugin that adds a macros to embed videos into Redmine wiki pages.

Supported Video Services:
* [Youtube](http://youtube.com)
* [Vimeo](http://vimeo.com)

This plugin was developed using J.W.Marsden's redmine-youtube plugin as a base.

## Usage

To embed a video you have to extract the video key from the video service URL and provide it as input to the appropriate macro. For example, the Vimeo URL,

[http://vimeo.com/17095170](http://vimeo.com/17095170)

is the Vimeo link to the Kinect Titty Tracker video. The video key for this URL is **17095170**. Use this key in the macro as follows,

`{{vimeo(17095170)}}`

You can also size the video if you have a specific space to fill using,

`{{vimeo(17095170, 800, 600)}}`

For Youtube, a given video link [http://www.youtube.com/watch?v=ctJJrBw7e-c](http://www.youtube.com/watch?v=ctJJrBw7e-c) has a video key of **ctJJrBw7e-c**. You can embed this video as follows:

`{{youtube(ctJJrBw7e-c)}}`

## Developing

Feel free to fork tis repo and add more video services. Look inside `init.rb` to see how the appropriate embed html is generated.
