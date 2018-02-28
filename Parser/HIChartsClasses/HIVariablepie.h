/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HIColor.h"


/**
* description: A variablepie series. If the type option is not
specified, it is inherited from chart.type.

For options that apply to multiple series, it is recommended to add
them to the plotOptions.series options structure.
To apply to all series of this specific type, apply it to [plotOptions.
variablepie](#plotOptions.variablepie).
*/
@interface HIVariablepie: HISeries

/**
* description: The maximum possible z value for the point's radius calculation. If
the point's Z value is bigger than zMax, the slice will be drawn
according to the zMax value
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/zmin-zmax/ : Series limited by both zMin and zMax
*/
@property(nonatomic, readwrite) NSNumber *zMax;
/**
* description: The minimum size of the points' radius related to chart's plotArea.
If a number is set, it applies in pixels.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/min-max-point-size/ : Example of minPointSize and maxPointSize
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/min-point-size-100/ : minPointSize set to 100
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ minPointSize;
/**
* description: Whether the pie slice's value should be represented by the area 
or the radius of the slice. Can be either area or radius. The
default, area, corresponds best to the human perception of the size
of each pie slice.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/sizeby/ : Difference between area and radius sizeBy
* accepted values: ["area", "radius"]
*/
@property(nonatomic, readwrite) NSString *sizeBy;
/**
* description: The minimum possible z value for the point's radius calculation. 
If the point's Z value is smaller than zMin, the slice will be drawn
according to the zMin value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/zmin-5/ : zMin set to 5, smaller z values are treated as 5
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/zmin-zmax/ : Series limited by both zMin and zMax
*/
@property(nonatomic, readwrite) NSNumber *zMin;
/**
* description: The maximum size of the points' radius related to chart's plotArea.
If a number is set, it applies in pixels.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/variable-radius-pie/min-max-point-size/ : Example of minPointSize and maxPointSize
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ maxPointSize;
/**
* description: The color of the border surrounding each slice. When null, the
border takes the same color as the slice fill. This can be used
together with a borderWidth to fill drawing gaps created by antialiazing
artefacts in borderless pies.

In styled mode, the border stroke is given in the .highcharts-point class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-bordercolor-black/ : Black border
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: The end angle of the pie in degrees where 0 is top and 90 is right.
Defaults to startAngle plus 360.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-semi-circle/ : Semi-circle donut
* default: null
*/
@property(nonatomic, readwrite) NSNumber *endAngle;
/**
* description: The size of the inner diameter for the pie. A size greater than 0
renders a donut chart. Can be a percentage or pixel value. Percentages
are relative to the pie size. Pixel values are given as integers.


Note: in Highcharts < 4.1.2, the percentage was relative to the plot
area, not the pie size.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-innersize-80px/ : 80px inner size
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-innersize-50percent/ : 50% of the plot area
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie-donut/ : 3D donut
* default: 0
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ innerSize;
/**
* description: The center of the pie chart relative to the plot area. Can be percentages
or pixel values. The default behaviour (as of 3.0) is to center
the pie so that all slices and data labels are within the plot area.
As a consequence, the pie may actually jump around in a chart with
dynamic values, as the data labels move. In that case, the center
should be explicitly set, for example to ["50%", "50%"].
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-center/ : Centered at 100, 100
* default: [null, null]
*/
@property(nonatomic, readwrite) NSArray /* <NSString, NSNumber> */ *center;
@property(nonatomic, readwrite) NSNumber /* Bool */ *clip;
/**
* description: If a point is sliced, moved out from the center, how many pixels
should it be moved?.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-slicedoffset-20/ : 20px offset
* default: 10
*/
@property(nonatomic, readwrite) NSNumber *slicedOffset;
/**
* description: The thickness of a 3D pie. Requires highcharts-3d.js
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: A series specific or series type specific color set to use instead
of the global colors.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-monochrome/ : Set default colors for all pies
*/
@property(nonatomic, readwrite) NSArray<HIColor *> *colors;
/**
* description: The minimum size for a pie in response to auto margins. The pie will
try to shrink to make room for data labels in side the plot area,
 but only to this size.
* default: 80
*/
@property(nonatomic, readwrite) NSNumber *minSize;
/**
* description: The width of the border surrounding each slice.

When setting the border width to 0, there may be small gaps between
the slices due to SVG antialiasing artefacts. To work around this,
keep the border width at 0.5 or 1, but set the borderColor to
null instead.

In styled mode, the border stroke width is given in the .highcharts-point class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-borderwidth/ : 3px border
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
@property(nonatomic, readwrite) NSString *legendType;
/**
* description: The start angle of the pie slices in degrees where 0 is top and 90
right.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-startangle-90/ : Start from right
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *startAngle;
/**
* description: The diameter of the pie relative to the plot area. Can be a percentage
or pixel value. Pixel values are given as integers. The default
behaviour (as of 3.0) is to scale to the plot area and give room
for data labels within the plot area.
slicedOffset is also included 
in the default size calculation. As a consequence, the size
of the pie may vary when points are updated and data labels more
around. In that case it is best to set a fixed value, for example
"75%".
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-size/ : Smaller pie
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ size;
/**
* description: Equivalent to chart.ignoreHiddenSeries,
this option tells whether the series shall be redrawn as if the
hidden point were null.

The default value changed from false to true with Highcharts
3.0.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-ignorehiddenpoint/ : True, the hiddden point is ignored
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *ignoreHiddenPoint;

-(NSDictionary *)getParams;

@end
