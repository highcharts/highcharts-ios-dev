#import "HIDrilldownDrillUpButton.h"


/**
* description: <p>Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.</p>

<p>The drilldown feature requires the <code>drilldown.js</code> file to be loaded, found in the <code>modules</code> directory of the download package, or online at <a href="http://code.highcharts.com/modules/drilldown.js">code.highcharts.com/modules/drilldown.js</a>.</p>


* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/multi-series/" target="_blank">multi series drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/column-drilldown/" target="_blank">generated column drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-drilldown/" target="_blank">pie drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/across-types/" target="_blank">drilldown across series types</a>.
*/
@interface HIDrilldown: HIChartsJSONSerializable

/**
* description: When this option is false, clicking a single point will drill down all points in the same category, equivalent to clicking the X axis label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/allowpointdrilldown-false/" target="_blank">Don't allow point drilldown</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointDrilldown;
/**
* description: Additional styles to apply to the X axis label for a point that has drilldown data. By default it is underlined and blue to invite to interaction.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/labels/" target="_blank">Label styles</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *activeAxisLabelStyle;
/**
* description: <p>Set the animation for all drilldown animations. Animation of a drilldown occurs when drilling between a column point and a column series, or a pie slice and a full pie series. Drilldown can still be used between series and points of different types, but animation will not occur.</p>
 
 <p>The animation can either be set as a boolean or a configuration object. If <code>true</code>,
 it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object,
 the following properties are supported: 
 </p><dl>
 	<dt>duration</dt>
 	<dd>The duration of the animation in milliseconds.</dd>
 	
 	<dt>easing</dt>
 	<dd>A string reference to an easing function set on the <code>Math</code> object. See <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/">the easing demo</a>.</dd>
 </dl>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *animation;
/**
* description: An array of series configurations for the drill down. Each series configuration uses the same syntax as the <a href="#series">series</a> option set. These drilldown series are hidden by default. The drilldown series is linked to the parent series' point by its <code>id</code>.
*/
@property(nonatomic, readwrite) NSMutableArray *series;
/**
* description: Options for the drill up button that appears when drilling down on a series. The text for the button is defined in <a href="#lang.drillUpText">lang.drillUpText</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/drillupbutton/" target="_blank">Drill up button</a>
*/
@property(nonatomic, readwrite) HIDrilldownDrillUpButton *drillUpButton;
/**
* description: Additional styles to apply to the data label of a point that has drilldown data. By default it is underlined and blue to invite to interaction.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/labels/" target="_blank">Label styles</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *activeDataLabelStyle;

-(NSDictionary *)getParams;

@end
