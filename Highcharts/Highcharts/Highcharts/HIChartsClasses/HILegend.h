#import "HILegendNavigation.h"
#import "HILegendTitle.h"
#import "HIHexColor.h"


/**
* description: <p>The legend is a box containing a symbol and name for each series item or point item in the chart. Each series (or points in case of pie charts) is represented by a symbol and its name in the legend.</p>

<p>It is also possible to override the symbol creator function and create <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/studies/legend-custom-symbol/">custom legend symbols</a>.</p>
*/
@interface HILegend: HIChartsJSONSerializable

/**
* description: The width of the drawn border around the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/borderwidth/" target="_blank">2px border width</a>
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Maximum pixel height for the legend. When the maximum height is extended, navigation will show.
*/
@property(nonatomic, readwrite) NSNumber *maxHeight;
/**
* description: <p>The horizontal alignment of the legend box within the chart area. Valid values are <code>left</code>, <code>center</code> and <code>right</code>.</p>

<p>In the case that the legend is aligned in a corner position, the <code>layout</code> option will determine whether to place it above/below or on the side of the plot area.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/align/" target="_blank">Legend at the right of the chart</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: <p>Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the legend item texts. Prior to 4.1.7, when using HTML, <a href="#legend.navigation">legend.navigation</a> was disabled.</p>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: When this is true, the legend symbol width will be the same as the symbol height, which in turn defaults to the font size of the legend items.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *squareSymbol;
/**
* description: Callback function to format each of the series' labels. The <em>this</em> keyword refers to the series object, or the point object in case of pie charts. By default the series or point name is printed.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/labelformatter/" target="_blank">Add text</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *labelFormatter;
/**
* description: Whether to apply a drop shadow to the legend. A <code>backgroundColor</code> also needs to be applied for this to take effect. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/shadow/" target="_blank">White background and drop shadow</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: Whether to show the symbol on the right side of the text rather than the left side.  This is common in Arabic and Hebraic.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/rtl/" target="_blank">Symbol to the right</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *rtl;
/**
* description: When the legend is floating, the plot area ignores it and is allowed to be placed below it.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/floating-false/" target="_blank">False by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/floating-true/" target="_blank">true</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *floating;
/**
* description: If the plot area sized is calculated automatically and the legend is not floating, the legend margin is the  space between the legend and the axis labels or plot area.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/margin-default/" target="_blank">12 pixels by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/margin-30/" target="_blank">30 pixels</a>.
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: Line height for the legend items. Deprecated as of 2.1. Instead, the line height for each  item can be set using itemStyle.lineHeight, and the padding between items using itemMarginTop and itemMarginBottom.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/lineheight/" target="_blank">Setting padding</a>.
*/
@property(nonatomic, readwrite) NSNumber *lineHeight;
/**
* description: Options for the paging or navigation appearing when the legend is overflown. Navigation works well on screen, but not in static exported images. One way of working around that is to <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation-enabled-false/">increase the chart height in export</a>.
*/
@property(nonatomic, readwrite) HILegendNavigation *navigation;
/**
* description: Enable or disable the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/enabled-false/" target="_blank">Legend disabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The pixel bottom margin for each legend item.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/padding-itemmargin/" target="_blank">
				Padding and item margins demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *itemMarginBottom;
/**
* description: The vertical offset of the legend relative to it's vertical alignment <code>verticalAlign</code> within chart.spacingTop and chart.spacingBottom. Negative y moves it up, positive y moves it down.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/verticalalign/" target="_blank">Legend 100px from the top of the chart</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x offset of the legend relative to its horizontal alignment <code>align</code> within chart.spacingLeft and chart.spacingRight. Negative x moves it to the left, positive x moves it to the right. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/width/" target="_blank">Aligned to the plot area</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: CSS styles for the legend area. In the 1.x versions the position of the legend area was determined by CSS. In 2.x, the position is determined by properties like  <code>align</code>, <code>verticalAlign</code>, <code>x</code> and <code>y</code>, but the styles are still parsed for backwards compatibility.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: CSS styles for each legend item when the corresponding series or point is hidden. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from <code>style</code> unless overridden here.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/itemhiddenstyle/" target="_blank">Darker gray color</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *itemHiddenStyle;
/**
* description: The width for each legend item. This is useful in a horizontal layout with many items when you want the items to align vertically.  .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/itemwidth-default/" target="_blank">Null by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/itemwidth-80/" target="_blank">80 for aligned legend items</a>
*/
@property(nonatomic, readwrite) NSNumber *itemWidth;
/**
* description: The pixel top margin for each legend item.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/padding-itemmargin/" target="_blank">
				Padding and item margins demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *itemMarginTop;
/**
* description: The inner padding of the legend box.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/padding-itemmargin/" target="_blank">
				Padding and item margins demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: A <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting">format string</a> for each legend label. Available variables relates to properties on the series, or the point in case of pies.
*/
@property(nonatomic, readwrite) NSString *labelFormat;
/**
* description: A title to be added on top of the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/title/" target="_blank">Legend title</a>
*/
@property(nonatomic, readwrite) HILegendTitle *title;
/**
* description: The pixel height of the symbol for series types that use a rectangle in the legend. Defaults to the font size of legend items.
*/
@property(nonatomic, readwrite) NSNumber *symbolHeight;
/**
* description: The pixel padding between the legend item symbol and the legend item text.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/symbolpadding/" target="_blank">Greater symbol width and padding</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolPadding;
/**
* description: In a legend with horizontal layout, the itemDistance defines the pixel distance between each item. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/layout-horizontal/" target="_blank">50px item distance</a>
*/
@property(nonatomic, readwrite) NSNumber *itemDistance;
/**
* description: CSS styles for each legend item. Only a subset of CSS is supported, notably those options related to text.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/itemstyle/" target="_blank">Bold black text</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *itemStyle;
/**
* description: The background color of the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/backgroundcolor/" target="_blank">Yellowish background</a>
*/
@property(nonatomic, readwrite) HIHexColor *backgroundColor;
/**
* description: CSS styles for each legend item in hover mode. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from <code>style</code> unless overridden here.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/itemhoverstyle/" target="_blank">Red on hover</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *itemHoverStyle;
/**
* description: The color of the drawn border around the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/bordercolor/" target="_blank">Brown border</a>
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: The border radius of the symbol for series types that use a rectangle in the legend. Defaults to half the <code>symbolHeight</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/symbolradius/" target="_blank">Round symbols</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolRadius;
/**
* description: The border corner radius of the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/borderradius-default/" target="_blank">Square by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/borderradius-round/" target="_blank">5px rounded</a>
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Whether to reverse the order of the legend items compared to the order of the series or points as defined in the configuration object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/reversed/" target="_blank">Stacked bar with reversed legend</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reversed;
/**
* description: The width of the legend box.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/width/" target="_blank">Aligned to the plot area</a>
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: <p>The vertical alignment of the legend box. Can be one of <code>top</code>, <code>middle</code> or  <code>bottom</code>. Vertical position can be further determined by the <code>y</code> option.</p>

<p>In the case that the legend is aligned in a corner position, the <code>layout</code> option will determine whether to place it above/below or on the side of the plot area.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/verticalalign/" target="_blank">Legend 100px from the top of the chart</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The pixel width of the legend item symbol. When the <code>squareSymbol</code> option is set, this defaults to the <code>symbolHeight</code>, otherwise 16.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/symbolwidth/" target="_blank">Greater symbol width and padding</a>
*/
@property(nonatomic, readwrite) NSNumber *symbolWidth;
/**
* description: The layout of the legend items. Can be one of "horizontal" or "vertical".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/layout-horizontal/" target="_blank">Horizontal by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/layout-vertical/" target="_blank">vertical</a>
* accepted values: ["horizontal", "vertical"]
*/
@property(nonatomic, readwrite) NSString *layout;

-(NSDictionary *)getParams;

@end
