/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIEvents.h"
#import "HIAnimationOptionsObject.h"


/**
Properties for each single point.
*/
@interface HIPoint: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIEvents *events;
/**
The y position of the point. Units can be either in axis or chart pixel coordinates.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
The x position of the point. Units can be either in axis or chart pixel coordinates.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array. If the option is not configured or the axis is not found the point's x coordinate refers to the chart pixels.
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ xAxis;
/**
This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the yAxis array. If the option is not configured or the axis is not found the point's y coordinate refers to the chart pixels.
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ yAxis;

-(NSDictionary *)getParams;

-(void)cancelSonify;
-(void)cancelSonify:(NSNumber /* Bool */ *)fadeOut;
-(void)onMouseOut;
-(void)remove:(NSNumber /* Bool */ *)redraw;
-(void)remove:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;
-(void)select;
-(void)select:(NSNumber /* Bool */ *)selected;
-(void)select:(NSNumber /* Bool */ *)selected accumulate:(NSNumber /* Bool */ *)accumulate;
-(void)setNestedProperty:(id)object value:(id)value key:(NSString *)key;
-(void)setState;
-(void)setState:(NSString *)state;
-(void)setState:(NSString *)state move:(NSNumber /* Bool */ *)move;
-(void)sonify:(NSDictionary *)options;
-(void)tooltipFormatter:(NSString *)pointFormat;
-(void)update:(HIPoint *)options;
-(void)update:(HIPoint *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)update:(HIPoint *)options redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;

@end
