/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIRight.h"
#import "HIBottom.h"
#import "HITop.h"
#import "HIBack.h"
#import "HIFront.h"
#import "HISide.h"
#import "HILeft.h"


/**
* description: Provides the option to draw a frame around the charts by defining
a bottom, front and back panel.
*/
@interface HIFrame: HIChartsJSONSerializable

/**
* description: The right of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIRight *right;
@property(nonatomic, readwrite) HIBottom *bottom;
/**
* description: The top of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HITop *top;
/**
* description: The back side of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIBack *back;
/**
* description: Whether the frames are visible.
*/
@property(nonatomic, readwrite) NSString *visible;
/**
* description: The front of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIFront *front;
/**
* description: General pixel thickness for the frame faces.
*/
@property(nonatomic, readwrite) NSNumber *size;
/**
* description: Note: As of v5.0.12, frame.left or frame.right should be used
instead.

The side for the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HISide *side;
/**
* description: The left side of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HILeft *left;

-(NSDictionary *)getParams;

@end
