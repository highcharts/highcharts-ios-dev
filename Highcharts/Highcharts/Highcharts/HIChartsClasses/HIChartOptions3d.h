#import "HIChartOptions3dFrame.h"


/**
* description: Options to render charts in 3 dimensions. This feature requires highcharts-3d.js, found in the download package or online at http://code.highcharts.com/highcharts-3d.js : code.highcharts.com/highcharts-3d.js.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column/ : Basic 3D columns, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie/ : basic 3D pie, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter/ : basic 3D scatter chart.
*/
@interface HIChartOptions3d: HIChartsJSONSerializable

/**
* description: Whether the 3d box should automatically adjust to the chart plot area.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *fitToPlot;
/**
* description: One of the two rotation angles for the chart.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-column-interactive/ : Dynamic Angles
*/
@property(nonatomic, readwrite) NSNumber *beta;
/**
* description: Defines the distance the viewer is standing in front of the chart, this setting is important to calculate the perspective effect in column and scatter charts.
It is not used for 3D pie charts.
*/
@property(nonatomic, readwrite) NSNumber *viewDistance;
/**
* description: Provides the option to draw a frame around the charts by defining a bottom, front and back panel. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column-frame/ : Framed column chart
*/
@property(nonatomic, readwrite) HIChartOptions3dFrame *frame;
/**
* description: Wether to render the chart using the 3D functionality.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The total depth of the chart.
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: One of the two rotation angles for the chart.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-column-interactive/ : Dynamic Angles
*/
@property(nonatomic, readwrite) NSNumber *alpha;

-(NSDictionary *)getParams;

@end