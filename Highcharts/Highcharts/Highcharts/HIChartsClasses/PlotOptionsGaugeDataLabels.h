#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: Data labels for the gauge. For gauges, the data labels are enabled by default and shown in a bordered box below the point.
*/
@interface PlotOptionsGaugeDataLabels: HIChartsJSONSerializable

/**
* description: The y position offset of the label relative to the center of the gauge. 
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position offset of the label relative to the point. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/" target="_blank">Vertical and positioned</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: How to handle data labels that flow outside the plot area. The default is <code>justify</code>, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set <code>crop</code> to <code>false</code> and <code>overflow</code> to <code>"none"</code>.
* accepted values: ["justify", "none"]
*/
@property(nonatomic, readwrite) NSString *overflow;
/**
* description: The border color for the data label.
*/
@property(nonatomic, readwrite) HexColor *borderColor;
/**
* description: Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/" target="_blank">Vertical labels</a>
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Whether to defer displaying the data labels until the initial series animation has finished.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *defer;
/**
* description: The border radius in pixels for the gauge's data label.
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: The border width in pixels for the gauge data label.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Callback JavaScript function to format the data label. Note that if a <code>format</code> is defined, the format takes precedence and the formatter is ignored. Available data are:
<table>
<tbody><tr>
  <td><code>this.percentage</code></td>
  <td>Stacked series and pies only. The point's percentage of the total.</td>
</tr>
<tr>
  <td><code>this.point</code></td>
  <td>The point object. The point name, if defined, is available 
through <code>this.point.name</code>.</td>
</tr>
<tr>
  <td><code>this.series</code>:</td>
  <td>The series object. The series name is available 
through <code>this.series.name</code>.</td>
</tr>
<tr>
  <td><code>this.total</code></td>
  <td>Stacked series only. The total value at this point's x value.</td>
</tr>				
<tr>
  <td><code>this.x</code>:</td>
  <td>The x value.</td>
</tr>
<tr>
  <td><code>this.y</code>:</td>
  <td>The y value.</td>
</tr>
</tbody></table>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *formatter;
/**
* description: Styles for the label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-style/" target="_blank">Bold labels</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: The background color or gradient for the data label. Defaults to <code>undefined</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) HexColor *backgroundColor;
/**
* description: Enable or disable the data labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: For points with an extent, like columns, whether to align the data label inside the box or to the actual value point. Defaults to <code>false</code> in most cases, <code>true</code> in stacked columns.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *inside;
/**
* description: The shadow of the box. Works best with <code>borderWidth</code> or <code>backgroundColor</code>. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: The Z index of the data labels. A value of 2 display them behind the dial.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-shape/" target="_blank">A callout for annotations</a>
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: When either the <code>borderWidth</code> or the <code>backgroundColor</code> is set, this		is the padding within the box.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: A <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting">format string</a> for the data label. Available variables are the same as for <code>formatter</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-format/" target="_blank">Add a unit</a>
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: A class name for the data label. Particularly in <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/data-label-contrast/">contrast text shadow</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/series-datalabels/" target="_blank">Styling by CSS</a>.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The alignment of the data label compared to the point.  If <code>right</code>, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the <a href="#plotOptions.column.dataLabels.inside">inside</a> option. Can be one of "left", "center" or "right".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-align-left/" target="_blank">Left aligned</a>.

<a href="http://jsfiddle.net/highcharts/72sbw0Lz/">Understand alignment to boxes, lines and points</a>.
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The vertical alignment of the data label.
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the <a href="#plotOptions.series.dataLabels.overflow">overflow</a> option.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *crop;
/**
* description: The text color for the data labels. Defaults to <code>null</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-color/" target="_blank">Red data labels</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the <a href="#plotOptions.series.dataLabels.padding">dataLabels.padding</a> can be set to 0.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-allowoverlap-false/" target="_blank">Don't allow overlap</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowOverlap;

-(NSDictionary *)getParams;

@end
