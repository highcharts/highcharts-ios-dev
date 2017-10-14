/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Styles for the label. The default color setting is "contrast",
which is a pseudo color that Highcharts picks up and applies the
maximum contrast to the underlying point item, for example the
bar in a bar chart.
The textOutline is a pseudo property that
applies an outline of the given width with the given color, which
by default is the maximum contrast to the text. So a bright text
color will result in a black text outline for maximum readability
on a mixed background. In some cases, especially with grayscale
text, the text outline doesn't work well, in which cases it can
be disabled by setting it to "none". When useHTML is true, the
textOutline will not be picked up. In this, case, the same effect
can be acheived through the text-shadow CSS property.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-style/ : Bold labels
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/color-axis/ : Bold labels
* default: {"color": "contrast", "fontSize": "11px", "fontWeight": "bold", "textOutline": "1px contrast" }
*/
@interface HIPlotOptionsScatterDataLabelsStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *textOutline;
@property(nonatomic, readwrite) NSString *fontWeight;
@property(nonatomic, readwrite) NSString *color;
@property(nonatomic, readwrite) NSString *fontSize;

-(NSDictionary *)getParams;

@end
