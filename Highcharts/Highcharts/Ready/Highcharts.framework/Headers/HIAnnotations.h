/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIAnnotationsLabels.h"
#import "HIAnnotationsShapeOptions.h"
#import "HIAnnotationsShapes.h"
#import "HIAnnotationsLabelOptions.h"


/**
* description: Options for configuring annotations, for example labels, arrows or 
shapes. Annotations can be tied to points, axis coordinates or chart
pixel coordinates.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/basic/ : Basic annotations
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/annotations/fibonacci-retracements : Custom annotation, Fibonacci retracement
*/
@interface HIAnnotations: HIChartsJSONSerializable

/**
* description: Whether the annotation is visible.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/visible/ : Set annotation visibility
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: An array of labels for the annotation. For options that apply to multiple
labels, they can be added to the annotations.labelOptions.html : labelOptions.
*/
@property(nonatomic, readwrite) NSArray <HIAnnotationsLabels *> *labels;
/**
* description: The Z index of the annotation.
* default: 6
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: Options for annotation's shapes. Each shape inherits options
from the shapeOptions object. An option from the shapeOptions can be
overwritten by config for a specific shape.
*/
@property(nonatomic, readwrite) HIAnnotationsShapeOptions *shapeOptions;
/**
* description: An array of shapes for the annotation. For options that apply to multiple
shapes, then can be added to the annotations.shapeOptions.html : shapeOptions.
*/
@property(nonatomic, readwrite) NSArray <HIAnnotationsShapes *> *shapes;
/**
* description: Options for annotation's labels. Each label inherits options
from the labelOptions object. An option from the labelOptions can be
overwritten by config for a specific label.
*/
@property(nonatomic, readwrite) HIAnnotationsLabelOptions *labelOptions;

-(NSDictionary *)getParams;

@end