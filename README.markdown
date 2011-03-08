# Redmine Vimeo Macro Plugin

This is a [Redmine](http://www.redmine.org) plugin that adds a new macro to embed [Vimeo](http://vimeo.com) videos into wiki pages.

## Usage

To embed a video you have to extract the video key from the Vimeo URL and provide it as input to the macro. For example the URL,

[http://vimeo.com/17095170](http://vimeo.com/17095170)

is the Vimeo link to the Kinect Titty Tracker video. The video key for this URL is **17095170**. Use this key in they vimeo macro as follows,

`{{vimeo(17095170)}}`

You can also size the video if you have a specific space to fill using,

`{{youtube(17095170, 800, 600)}}`

The result is a nice Vimeo video in your text content.

