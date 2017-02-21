#import "HIChartsJSONSerializable.h"


/**
* description: Position configuration for the credits label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/credits/position-left/" target="_blank">Left aligned</a>
*/
@interface CreditsPosition: HIChartsJSONSerializable

/**
* description: Vertical alignment of the credits.
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: Horizontal alignment of the credits.
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical pixel offset of the credits.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal pixel offset of the credits.
*/
@property(nonatomic, readwrite) NSNumber *x;

-(NSDictionary *)getParams;

@end
