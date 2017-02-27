#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: A collection of options for buttons appearing in the exporting module.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the buttons are styled with the .highcharts-contextbutton and .highcharts-button-symbol class.
*/
@interface HINavigationButtonOptions: HIChartsJSONSerializable

/**
* description: The x position of the center of the symbol inside the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *symbolX;
/**
* description: The y position of the center of the symbol inside the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *symbolY;
/**
* description: The vertical offset of the button's position relative to its verticalAlign.			 .
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/ : Buttons at lower right
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: A configuration object for the button theme. The object accepts SVG properties like stroke-width, stroke and fill. Tri-state button styles are supported by the states.hover and states.select objects.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-theme/ : Theming the buttons
*/
@property(nonatomic, readwrite) id theme;
/**
* description: The vertical alignment of the buttons. Can be one of "top", "middle" or "bottom".
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-verticalalign/ : Buttons at lower right
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The pixel size of the symbol on the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *symbolSize;
/**
* description: The pixel stroke width of the symbol on the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *symbolStrokeWidth;
/**
* description: Fill color for the symbol within the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-symbolfill/ : Blue symbol stroke for one of the buttons
*/
@property(nonatomic, readwrite) HIColor *symbolFill;
/**
* description: The color of the symbol's stroke or line.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-symbolstroke/ : Blue symbol stroke
*/
@property(nonatomic, readwrite) HIColor *symbolStroke;
/**
* description: The pixel width of the button.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: Alignment for the buttons.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-align/ : Center aligned
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Whether to enable buttons.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-enabled/ : Exporting module loaded but buttons disabled
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: A text string to add to the individual button. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text/ : Full text button, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/buttons-text-symbol/ : combined symbol and text 
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Pixel height of the buttons.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/buttonoptions-height/ : Bigger buttons
*/
@property(nonatomic, readwrite) NSNumber *height;

-(NSDictionary *)getParams;

@end
