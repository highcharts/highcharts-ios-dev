#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: An object, or array of objects, for backgrounds.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-speedometer/" target="_blank">Multiple backgrounds on a gauge</a>.
*/
@interface HIPaneBackground: HIChartsJSONSerializable

/**
* description: The pane background border color.
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: Tha shape of the pane background. When <code>solid</code>, the background is circular. When <code>arc</code>, the background extends only from the min to the max of the value axis.
* accepted values: ["solid", "arc"]
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The class name for this background.
* demo:  <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pane/" target="_blank">Panes styled by CSS</a> in <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>
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
