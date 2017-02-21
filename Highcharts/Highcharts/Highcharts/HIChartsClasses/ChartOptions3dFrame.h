#import "ChartOptions3dFrameBack.h"
#import "ChartOptions3dFrameSide.h"
#import "ChartOptions3dFrameBottom.h"


/**
* description: Provides the option to draw a frame around the charts by defining a bottom, front and back panel. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column-frame/">Framed column chart</a>
*/
@interface ChartOptions3dFrame: HIChartsJSONSerializable

/**
* description: Defines the back panel of the frame around 3D charts.
*/
@property(nonatomic, readwrite) ChartOptions3dFrameBack *back;
/**
* description: The side for the frame around a 3D chart.
*/
@property(nonatomic, readwrite) ChartOptions3dFrameSide *side;
/**
* description: The bottom of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) ChartOptions3dFrameBottom *bottom;

-(NSDictionary *)getParams;

@end
