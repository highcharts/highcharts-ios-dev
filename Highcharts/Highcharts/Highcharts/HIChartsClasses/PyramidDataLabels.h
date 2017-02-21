#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


@interface PyramidDataLabels: HIChartsJSONSerializable

/**
* description: The border radius in pixels for the data label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Whether to render the connector as a soft arc or a line with sharp break.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-softconnector-true/" target="_blank">Soft</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-softconnector-false/" target="_blank">non soft</a> connectors.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *softConnector;
/**
* description: The y position offset of the label relative to the point. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/" target="_blank">Vertical and positioned</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The background color or gradient for the data label. Defaults to <code>undefined</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) HexColor *backgroundColor;
/**
* description: The border color for the data label. Defaults to <code>undefined</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) HexColor *borderColor;
/**
* description: The distance from the data label to the connector.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorpadding/" target="_blank">No padding</a>
*/
@property(nonatomic, readwrite) NSNumber *connectorPadding;
/**
* description: Whether to defer displaying the data labels until the initial series animation has finished.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *defer;
/**
* description: The shadow of the box. Works best with <code>borderWidth</code> or <code>backgroundColor</code>. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: The x position offset of the label relative to the point. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/" target="_blank">Vertical and positioned</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Styles for the label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-style/" target="_blank">Bold labels</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: Enable or disable the data labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: <p>The width of the line connecting the data label to the pie slice.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the connector stroke width is given in the <code>.highcharts-data-label-connector</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorwidth-disabled/" target="_blank">Disable the connector</a>.


<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/" target="_blank">Styled connectors</a>.
*/
@property(nonatomic, readwrite) NSNumber *connectorWidth;
/**
* description: The distance of the data label from the pie's edge. Negative numbers put the data label on top of the pie slices. Connectors are only shown for data labels outside the pie.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-distance/" target="_blank">Data labels on top of the pie</a>
*/
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: A <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting">format string</a> for the data label. Available variables are the same as for <code>formatter</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-format/" target="_blank">Add a unit</a>
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: For points with an extent, like columns, whether to align the data label inside the box or to the actual value point. Defaults to <code>false</code> in most cases, <code>true</code> in stacked columns.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *inside;
/**
* description: Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the <a href="#plotOptions.series.dataLabels.overflow">overflow</a> option.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *crop;
/**
* description: A class name for the data label. Particularly in <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/data-label-contrast/">contrast text shadow</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/series-datalabels/" target="_blank">Styling by CSS</a>.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The Z index of the data labels. The default Z index puts it above the series. Use a Z index of 2 to display it behind the series.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: How to handle data labels that flow outside the plot area. The default is <code>justify</code>, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set <code>crop</code> to <code>false</code> and <code>overflow</code> to <code>"none"</code>.
* accepted values: ["justify", "none"]
*/
@property(nonatomic, readwrite) NSString *overflow;
/**
* description: The vertical alignment of a data label. Can be one of <code>top</code>, <code>middle</code> or <code>bottom</code>. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-shape/" target="_blank">A callout for annotations</a>
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The border width in pixels for the data label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The text color for the data labels. Defaults to <code>null</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-color/" target="_blank">Red data labels</a>
*/
@property(nonatomic, readwrite) HexColor *color;
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
* description: When either the <code>borderWidth</code> or the <code>backgroundColor</code> is set, this		is the padding within the box.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/" target="_blank">Data labels box options</a>
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/" target="_blank">Vertical labels</a>
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: <p>The color of the line connecting the data label to the pie slice. The default color is the same as the point's color.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the connector stroke is given in the <code>.highcharts-data-label-connector</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorcolor/" target="_blank">Blue connectors</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/" target="_blank">Styled connectors</a>.
*/
@property(nonatomic, readwrite) NSString *connectorColor;

-(NSDictionary *)getParams;

@end
