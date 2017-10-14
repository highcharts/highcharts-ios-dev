/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartOptions3dFrameRight.h"
#import "HIChartOptions3dFrameTop.h"
#import "HIChartOptions3dFrameBack.h"
#import "HIChartOptions3dFrameSide.h"
#import "HIChartOptions3dFrameFront.h"
#import "HIChartOptions3dFrameLeft.h"
#import "HIChartOptions3dFrameBottom.h"


/**
* description: Provides the option to draw a frame around the charts by defining
a bottom, front and back panel.
*/
@interface HIChartOptions3dFrame: HIChartsJSONSerializable

/**
* description: Whether the frames are visible.
* default: default
*/
@property(nonatomic, readwrite) NSString *visible;
/**
* description: General pixel thickness for the frame faces.
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *size;
/**
* description: The right of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameRight *right;
/**
* description: The top of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameTop *top;
/**
* description: The back side of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameBack *back;
/**
* description: Note: As of v5.0.12, frame.left or frame.right should be used
instead.
The side for the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameSide *side;
/**
* description: The front of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameFront *front;
/**
* description: The left side of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameLeft *left;
/**
* description: The bottom of the frame around a 3D chart.
*/
@property(nonatomic, readwrite) HIChartOptions3dFrameBottom *bottom;

-(NSDictionary *)getParams;

@end
