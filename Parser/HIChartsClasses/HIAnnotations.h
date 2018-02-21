/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIShapes.h"
#import "HILabels.h"
#import "HILabelOptions.h"
#import "HIShapeOptions.h"


/**
* description: Options for configuring annotations, for example labels, arrows or 
shapes. Annotations can be tied to points, axis coordinates or chart
pixel coordinates.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/basic/ : Basic annotations
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/annotations/ : Advanced annotations
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/annotations : Styled mode
*/
@interface HIAnnotations: HIChartsJSONSerializable

/**
* description: An array of shapes for the annotation. For options that apply to multiple
shapes, then can be added to the [shapeOptions](annotations.shapeOptions.html).
*/
@property(nonatomic, readwrite) NSArray <HIShapes *> *shapes;
/**
* description: An array of labels for the annotation. For options that apply to multiple
labels, they can be added to the [labelOptions](annotations.labelOptions.html).
*/
@property(nonatomic, readwrite) NSArray <HILabels *> *labels;
/**
* description: Options for annotation's labels. Each label inherits options
from the labelOptions object. An option from the labelOptions can be
overwritten by config for a specific label.
*/
@property(nonatomic, readwrite) HILabelOptions *labelOptions;
/**
* description: The Z index of the annotation.
* default: 6
*
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: Whether the annotation is visible.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/visible/ : Set annotation visibility
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: Options for annotation's shapes. Each shape inherits options
from the shapeOptions object. An option from the shapeOptions can be
overwritten by config for a specific shape.
*/
@property(nonatomic, readwrite) HIShapeOptions *shapeOptions;

-(NSDictionary *)getParams;

@end
