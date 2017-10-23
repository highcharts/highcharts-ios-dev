/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: The chart's main title.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/title/title/ : Title options demonstrated
*/
@interface HITitle: HIChartsJSONSerializable

/**
* description: CSS styles for the title. Use this for font styling, but use align,
x and y for text alignment.
In styled mode, the title style is given in the .highcharts-title class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/style/ : Custom color and weight
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/titles/ : Styled mode
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-style/ : Custom color and weight
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/titles/ : Styled mode
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/titles/ : Styled mode
*/
@property(nonatomic, readwrite) NSDictionary /* <NSString, NSString> */ *style;
/**
* description: The y position of the title relative to the alignment within chart.
spacingTop and chart.spacingBottom.
 By default it depends on the font size.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/y/ : Title inside the plot area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-verticalalign/ : Chart title in bottom right corner
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The horizontal alignment of the title. Can be one of "left", "center"
and "right".

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/align/ : Aligned to the plot area (x = 70px = margin left - spacing left)
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-align/ : Aligned to the plot area (x = 50px = margin left - spacing left)
* accepted values: ["left", "center", "right"]
* default: center
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Whether to http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html : use HTML to render the text.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The x position of the title relative to the alignment within chart.
spacingLeft and chart.spacingRight.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/align/ : Aligned to the plot area (x = 70px = margin left - spacing left)
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-align/ : Aligned to the plot area (x = 50px = margin left - spacing left)
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: When the title is floating, the plot area will not move to make space
for it.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-none/ : False by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/floating/ : True - title on top of the plot area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-floating/ : True - title on top of the plot area
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *floating;
/**
* description: The margin between the title and the plot area, or if a subtitle
is present, the margin between the subtitle and the plot area.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/margin-50/ : A chart title margin of 50
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/margin-subtitle/ : The same margin applied with a subtitle
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-margin/ : A chart title margin of 50
* default: 15
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: The vertical alignment of the title. Can be one of "top", "middle"
and "bottom". When a value is given, the title behaves as if floating were true.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/verticalalign/ : Chart title in bottom right corner
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-verticalalign/ : Chart title in bottom right corner
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The title of the chart. To disable the title, set the text to
null.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/text/ : Custom title
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/chart/title-text/ : Custom title
* default: Chart title
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Adjustment made to the title width, normally to reserve space for
the exporting burger menu.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/ : Wider menu, greater padding
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/ : Wider menu, greater padding
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/ : Wider menu, greater padding
* default: -44
*/
@property(nonatomic, readwrite) NSNumber *widthAdjust;

-(NSDictionary *)getParams;

@end
