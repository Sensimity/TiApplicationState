# TiApplicationState

Adds support for the ApplicationState property to get the UIApplicationState.

## Usage

* Download the latest version from the dist folder
* Install the module into the modules/iphone folder of your project
* You can now use the module via require

~~~
var TiApplicationState = require('com.sensimity.TiApplicationState');
~~~

## Properties

### State

The <b>state</b> property is a string containing one of 3 possible values: 'background', 'active', 'inactive'. 

~~~
var TiApplicationState = require('com.sensimity.TiApplicationState');
Ti.API.info("TiApplicationState is " + TiApplicationState.state);
~~~