#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: An object, or array of objects, for backgrounds.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-speedometer/ : Multiple backgrounds on a gauge.
*/
@interface HIPaneBackground: HIChartsJSONSerializable

/**
* description: The pane background border color.
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: Tha shape of the pane background. When solid, the background is circular. When arc, the background extends only from the min to the max of the value axis.
* accepted values: ["solid", "arc"]
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The class name for this background.
* demo:  http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pane/ : Panes styled by CSS in http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The background color or gradient for the pane.
*/
@property(nonatomic, readwrite) HIHexColor *backgroundColor;
/**
* description: The pixel border width of the pane background.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The inner radius of the pane background. Can be either numeric (pixels) or a percentage string.
*/
@property(nonatomic, readwrite) NSString *innerRadius;
/**
* description: The outer radius of the circular pane background. Can be either numeric (pixels) or a percentage string.
*/
@property(nonatomic, readwrite) NSString *outerRadius;

-(NSDictionary *)getParams;

@end
