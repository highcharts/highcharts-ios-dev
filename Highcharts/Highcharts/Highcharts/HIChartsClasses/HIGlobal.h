#import "HIChartsJSONSerializable.h"


/**
* description: Global options that don't apply to each chart. These options, like the <code>lang</code>
		options, must be set using the <code>Highcharts.setOptions</code> method.
<pre>Highcharts.setOptions({
	global: {
		useUTC: false
	}
});</pre>
*/
@interface HIGlobal: HIChartsJSONSerializable

/**
* description: Requires <a href="http://momentjs.com/">moment.js</a>. If the timezone option is specified, it creates a default <a href="#global.getTimezoneOffset">getTimezoneOffset</a> function that looks up the specified timezone in moment.js. If moment.js is not included, this throws a Highcharts error in the console, but does not crash the chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.0.0/highslide-software/highcharts.com/tree/master/samples/highcharts/global/timezone/" target="_blank">Europe/Oslo</a>
*/
@property(nonatomic, readwrite) NSString *timezone;
/**
* description: A custom <code>Date</code> class for advanced date handling. For example, <a href="https://github.com/tahajahangir/jdate">JDate</a> can be hooked in to handle Jalali dates.
*/
@property(nonatomic, readwrite) id Date;
/**
* description: Whether to use UTC time for axis scaling, tickmark placement and time display in  <code>Highcharts.dateFormat</code>. Advantages of using UTC is that the time displays equally regardless of the user agent's time zone settings. Local time can be used when the data is loaded in real time or when correct Daylight Saving Time transitions are required.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/global/useutc-true/" target="_blank">True by default</a> - the starting point which is 
			at 00:00 UTC, is displayed as 00:00 in the axis labels and in the tooltip. 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/global/useutc-false/" target="_blank">False</a> - the starting point which is 
			at 00:00 UTC, is displayed as your local browser time in the axis labels and in 
			the tooltip.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useUTC;
/**
* description: Path to the pattern image required by VML browsers in order to draw radial gradients.
*/
@property(nonatomic, readwrite) NSString *VMLRadialGradientURL;
/**
* description: A callback to return the time zone offset for a given datetime. It takes the timestamp in terms of milliseconds since January 1 1970, and returns the timezone offset in minutes. This provides a hook for drawing time based charts in specific time zones using their local DST crossover dates, with the help of external libraries. 
* demo:  <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/global/gettimezoneoffset/" target="_blank">Use moment.js to draw Oslo time regardless of browser locale</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *getTimezoneOffset;
/**
* description: <p><em>Canvg rendering for Android 2.x is removed as of Highcharts 5.0. Use the <a href="#exporting.libURL">libURL</a> option to configure exporting.</em></p>

<p>The URL to the additional file to lazy load for Android 2.x devices. These devices don't 
 support SVG, so we download a helper file that contains <a href="http://code.google.com/p/canvg/">canvg</a>,
 its dependency rbcolor, and our own CanVG Renderer class. To avoid hotlinking to our site,
 you can install canvas-tools.js on your own server and change this option accordingly.</p>
*/
@property(nonatomic, readwrite) NSString *canvasToolsURL;
/**
* description: The timezone offset in minutes. Positive values are west, negative values are east of UTC, as in the ECMAScript <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getTimezoneOffset">getTimezoneOffset</a> method. Use this to display UTC based data in a predefined time zone. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/global/timezoneoffset/" target="_blank">Timezone offset</a>
*/
@property(nonatomic, readwrite) NSNumber *timezoneOffset;

-(NSDictionary *)getParams;

@end
