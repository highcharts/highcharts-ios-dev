#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: Set options on specific levels. Takes precedence over series options, but not point options.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/treemap-levels/" target="_blank">Styling dataLabels and borders</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/treemap-with-levels/" target="_blank">Different layoutAlgorithm</a>
*/
@interface HITreemapLevels: HIChartsJSONSerializable

/**
* description: Can set the layoutStartingDirection option on a specific level.
* accepted values: ["vertical", "horizontal"]
*/
@property(nonatomic, readwrite) NSString *layoutStartingDirection;
/**
* description: Can set the layoutAlgorithm option on a specific level. 
* accepted values: ["sliceAndDice", "stripes", "squarified", "strip"]
*/
@property(nonatomic, readwrite) NSString *layoutAlgorithm;
/**
* description: Can set a color on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: Can set the borderWidth on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Can set a <code>borderColor</code> on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: Can set the options of dataLabels on each point which lies on the level.
<a href="#plotOptions.treemap.dataLabels">plotOptions.treemap.dataLabels</a> for possible values.
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: Set the dash style of the border of all the point which lies on the level.
See <a href"#plotOptions.scatter.dashStyle">plotOptions.scatter.dashStyle</a> for possible options.
*/
@property(nonatomic, readwrite) NSString *borderDashStyle;
/**
* description: Decides which level takes effect from the options set in the levels object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/treemap-levels/" target="_blank">Styling of both levels</a>
*/
@property(nonatomic, readwrite) NSNumber *level;

-(NSDictionary *)getParams;

@end
