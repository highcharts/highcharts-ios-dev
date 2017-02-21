#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: <p>Options for the export button.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, export button styles can be applied with the <code>.highcharts-contextbutton</code> class.</p>
*/
@interface ExportingButtonsContextButton: HIChartsJSONSerializable

/**
* description: The pixel stroke width of the symbol on the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolStrokeWidth;
/**
* description: The y position of the center of the symbol inside the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolY;
/**
* description: Alignment for the buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-align/" target="_blank">Center aligned</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: A text string to add to the individual button. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text/" target="_blank">Full text button</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text-symbol/" target="_blank">combined symbol and text</a> 
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: The vertical offset of the button's position relative to its <code>verticalAlign</code>.			 .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/" target="_blank">Buttons at lower right</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The horizontal position of the button relative to the <code>align</code>
 option.
* demo:  
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Whether to enable buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-enabled/" target="_blank">Exporting module loaded but buttons disabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The vertical alignment of the buttons. Can be one of "top", "middle" or "bottom".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/" target="_blank">Buttons at lower right</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: Pixel height of the buttons.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: The x position of the center of the symbol inside the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolX;
/**
* description: See <a class="internal" href="#navigation.buttonOptions">navigation.buttonOptions</a> =&gt; symbolFill.
*/
@property(nonatomic, readwrite) HexColor *symbolFill;
/**
* description: The symbol for the button. Points to a definition function in the  <code>Highcharts.Renderer.symbols</code> collection. The default <code>exportIcon</code> function is part of the exporting module.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-contextbutton-symbol/" target="_blank">Use a circle for symbol</a>
* accepted values: ["circle", "square", "diamond", "triangle", "triangle-down", "menu"]
*/
@property(nonatomic, readwrite) NSString *symbol;
/**
* description: The color of the symbol's stroke or line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-symbolstroke/" target="_blank">Blue symbol stroke</a>
*/
@property(nonatomic, readwrite) HexColor *symbolStroke;
/**
* description: The pixel size of the symbol on the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolSize;
/**
* description: A configuration object for the button theme. The object accepts SVG properties like <code>stroke-width</code>, <code>stroke</code> and <code>fill</code>. Tri-state button styles are supported by the <code>states.hover</code> and <code>states.select</code> objects.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-theme/" target="_blank">Theming the buttons</a>
*/
@property(nonatomic, readwrite) id theme;
/**
* description: A click handler callback to use on the button directly instead of the popup menu.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-contextbutton-onclick/" target="_blank">Skip the menu and export the chart directly</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *onclick;
/**
* description: <p>A collection of config options for the menu items. Each options object consists of a <code>text</code> option which is a string to show in the menu item, as well as an <code>onclick</code> parameter which is a callback function to run on click.</p> <p>By default, there is the "Print" menu item plus one menu item for each of the available export types. Menu items can be customized by defining a new array of items and assigning  <code>null</code> to unwanted positions (see override example below).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-contextbutton-onclick/" target="_blank">Skip the menu and export the chart directly</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-contextbutton-menuitems/" target="_blank">override the menu items</a>
*/
@property(nonatomic, readwrite) NSMutableArray *menuItems;
/**
* description: The pixel width of the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/" target="_blank">Bigger buttons</a>
*/
@property(nonatomic, readwrite) NSNumber *width;

-(NSDictionary *)getParams;

@end
