#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: <p>A collection of options for buttons appearing in the exporting module.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the buttons are styled with the <code>.highcharts-contextbutton</code> and <code>.highcharts-button-symbol</code> class.</p>
*/
@interface NavigationButtonOptions: HIChartsJSONSerializable

/**
* description: The x position of the center of the symbol inside the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolX;
/**
* description: The y position of the center of the symbol inside the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolY;
/**
* description: The vertical offset of the button's position relative to its <code>verticalAlign</code>.			 .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/" target="_blank">Buttons at lower right</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: A configuration object for the button theme. The object accepts SVG properties like <code>stroke-width</code>, <code>stroke</code> and <code>fill</code>. Tri-state button styles are supported by the <code>states.hover</code> and <code>states.select</code> objects.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-theme/" target="_blank">Theming the buttons</a>
*/
@property(nonatomic, readwrite) id theme;
/**
* description: The vertical alignment of the buttons. Can be one of "top", "middle" or "bottom".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/" target="_blank">Buttons at lower right</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The pixel size of the symbol on the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolSize;
/**
* description: The pixel stroke width of the symbol on the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolStrokeWidth;
/**
* description: Fill color for the symbol within the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-symbolfill/" target="_blank">Blue symbol stroke for one of the buttons</a>
*/
@property(nonatomic, readwrite) HexColor *symbolFill;
/**
* description: The color of the symbol's stroke or line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-symbolstroke/" target="_blank">Blue symbol stroke</a>
*/
@property(nonatomic, readwrite) HexColor *symbolStroke;
/**
* description: The pixel width of the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: Alignment for the buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-align/" target="_blank">Center aligned</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Whether to enable buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-enabled/" target="_blank">Exporting module loaded but buttons disabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: A text string to add to the individual button. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text/" target="_blank">Full text button</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text-symbol/" target="_blank">combined symbol and text</a> 
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Pixel height of the buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *height;

-(NSDictionary *)getParams;

@end
