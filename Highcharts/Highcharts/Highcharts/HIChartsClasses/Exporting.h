#import "ExportingButtons.h"


/**
* description: Options for the exporting module. For an overview on the matter, see <a href="http://www.highcharts.com/docs/export-module/export-module-overview">the docs</a>.
*/
@interface Exporting: HIChartsJSONSerializable

/**
* description: Default MIME type for exporting if <code>chart.exportChart()</code> is called without specifying a <code>type</code> option. Possible values are <code>image/png</code>, <code>image/jpeg</code>, <code>application/pdf</code> and <code>image/svg+xml</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/type/" target="_blank">Default type set to <code>image/jpeg</code></a>
* accepted values: ["image/png", "image/jpeg", "application/pdf", "image/svg+xml"]
*/
@property(nonatomic, readwrite) NSString *type;
/**
* description: Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See <a href="#navigation.buttonOptions">navigation.buttonOptions</a> for general options.
*/
@property(nonatomic, readwrite) ExportingButtons *buttons;
/**
* description: Analogous to <a href="#exporting.sourceWidth">sourceWidth</a>
*/
@property(nonatomic, readwrite) NSNumber *sourceHeight;
/**
* description: Whether or not to fall back to the export server if the offline-exporting module is unable to export the chart on the client side.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *fallbackToExportServer;
/**
* description: The width of the original chart when exported, unless an explicit <a href="#chart.width">chart.width</a> is set. The width exported raster image is then multiplied by <a href="#exporting.scale">scale</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/sourcewidth/" target="_blank">Source size demo</a>
*/
@property(nonatomic, readwrite) NSNumber *sourceWidth;
/**
* description: Whether to enable the exporting module. Disabling the module will hide the context button, but API methods will still be available.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/enabled-false/" target="_blank">Exporting module is loaded but disabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The URL for the server module converting the SVG string to an image format. By default this points to Highchart's free web service.
*/
@property(nonatomic, readwrite) NSString *url;
/**
* description: <p>Experimental setting to allow HTML inside the chart (added through the <code>useHTML</code> options), directly in the exported image. This allows you to preserve complicated HTML structures like tables or bi-directional text in exported charts.</p>

<p>Disclaimer: The HTML is rendered in a <code>foreignObject</code> tag in the generated SVG. The official export server is based on PhantomJS, which supports this, but other SVG clients, like Batik, does not support it. This also applies to downloaded SVG that you want to open in a desktop client.</p>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowHTML;
/**
* description: The filename, without extension, to use for the exported chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/filename/" target="_blank">Custom file name</a>
*/
@property(nonatomic, readwrite) NSString *filename;
/**
* description: Defines the scale or zoom factor for the exported image compared to the on-screen display. While for instance a 600px wide chart may look good on a website, it will look bad in print. The default scale of 2 makes this chart export to a 1200px PNG or JPG. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/scale/" target="_blank">Scale demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *scale;
/**
* description: An object containing additional attributes for the POST form that sends the SVG to the export server. For example, a <code>target</code> can be set to make sure the generated image is received in another frame, or a custom <code>enctype</code> or <code>encoding</code> can be set.
*/
@property(nonatomic, readwrite) id formAttributes;
/**
* description: Path where Highcharts will look for export module dependencies to load on demand if they don't already exist on <code>window</code>.

Should currently point to location of <a href="https://github.com/canvg/canvg">CanVG</a> library, <a href="https://github.com/canvg/canvg">RGBColor.js</a>, <a href="https://github.com/yWorks/jsPDF">jsPDF</a> and <a href="https://github.com/yWorks/svg2pdf.js">svg2pdf.js</a>, required for client side export in certain browsers.
*/
@property(nonatomic, readwrite) NSString *libURL;
/**
* description: Additional chart options to be merged into an exported chart. For example, a common use case is to add data labels to improve readaility of the exported chart, or to add a printer-friendly color scheme.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/chartoptions-data-labels/" target="_blank">Added data labels</a>.
*/
@property(nonatomic, readwrite) id chartOptions;
/**
* description: Function to call if the offline-exporting module fails to export a chart on the client side, and <a href="#exporting.fallbackToExportServer">fallbackToExportServer</a> is disabled. If left undefined, an exception is thrown instead.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *error;
/**
* description: When printing the chart from the menu item in the burger menu, if the on-screen chart exceeds this width, it is resized. After printing or cancelled, it is restored. The default width makes the chart fit into typical paper format. Note that this does not affect the chart when printing the web page as a whole.
*/
@property(nonatomic, readwrite) NSNumber *printMaxWidth;
/**
* description: The pixel width of charts exported to PNG or JPG. As of Highcharts 3.0, the default pixel width is a function of the <a href="#chart.width">chart.width</a> or <a href="#exporting.sourceWidth">exporting.sourceWidth</a> and the <a href="#exporting.scale">exporting.scale</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/exporting/width/" target="_blank">Export to 200px wide images</a>
*/
@property(nonatomic, readwrite) NSNumber *width;

-(NSDictionary *)getParams;

@end
