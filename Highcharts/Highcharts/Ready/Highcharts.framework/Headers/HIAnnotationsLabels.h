/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIAnnotationsLabelsPoint.h"
#import "HIAnnotationsLabelsStyle.h"
#import "HIColor.h"


/**
* description: An array of labels for the annotation. For options that apply to multiple
labels, they can be added to the annotations.labelOptions.html : labelOptions.
*/
@interface HIAnnotationsLabels: HIChartsJSONSerializable

/**
* description: Whether to allow the annotation's labels to overlap.
To make the labels less sensitive for overlapping, 
the can be set to 0.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/tooltip-like/ : Hide overlapping labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowOverlap;
/**
* description: A https://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting : format string for the data label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-text/ : Set labels text
* default: undefined
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: How to handle the annotation's label that flow outside the plot
area. The justify option aligns the label inside the plot area.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-crop-overflow/ : Crop or justify labels
* accepted values: ["none", "justify"]
* default: justify
*/
@property(nonatomic, readwrite) NSString *overflow;
/**
* description: When either the borderWidth or the backgroundColor is set,
this    is the padding within the box.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
* default: 5
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: This option defines the point to which the label will be connected.
It can be either the point which exists in the series - it is referenced
by the point's id - or a new point with defined x, y properies
and optionally axes.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/mock-point/ : Attach annotation to a mock point
*/
@property(nonatomic, readwrite) HIAnnotationsLabelsPoint *point;
/**
* description: The border radius in pixels for the annotaiton's label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Callback JavaScript function to format the annotation's label. Note that
if a format or text are defined, the format or text take precedence
and the formatter is ignored. This refers to a point object.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-text/ : Set labels text
* default: function () {
	return defined(this.y) ? this.y : 'Annotation label';
}
*/
@property(nonatomic, readwrite) NSString /* Function */ *formatter;
/**
* description: Styles for the annotation's label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) HIAnnotationsLabelsStyle *style;
/**
* description: Whether to hide the annotation's label that is outside the plot area.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-crop-overflow/ : Crop or justify labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *crop;
/**
* description: Whether to http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html : use HTML to render the annotation's label.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The vertical alignment of the annotation's label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
* accepted values: ["top", "middle", "bottom"]
* default: bottom
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The label's pixel distance from the point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: The border width in pixels for the annotation's label

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Alias for the format option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-text/ : Set labels text
* default: undefined
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: The shadow of the box. The shadow can be an object configuration
containing color, offsetX, offsetY, opacity and width.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) id /* Bool, Object */ shadow;
/**
* description: The y position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
* default: -16
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The name of a symbol to use for the border around the label.
Symbols are predefined functions on the Renderer object.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shapes/ : Available shapes for labels
* default: callout
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The background color or gradient for the annotation's label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
* default: rgba(0, 0, 0, 0.75)
*/
@property(nonatomic, readwrite) HIColor *backgroundColor;
/**
* description: The border color for the annotation's label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
* default: black
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: The alignment of the annotation's label. If right,
the right side of the label should be touching the point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
* accepted values: ["left", "center", "right"]
* default: center
*/
@property(nonatomic, readwrite) NSString *align;

-(NSDictionary *)getParams;

@end
