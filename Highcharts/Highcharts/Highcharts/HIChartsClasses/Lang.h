#import "HIChartsJSONSerializable.h"


/**
* description: Language object. The language object is global and it can't
		be set on each chart initiation. Instead, use <code>Highcharts.setOptions</code> to
		set it before any chart is initiated. 
<pre>Highcharts.setOptions({
	lang: {
		months: ['Janvier', 'FĂŠvrier', 'Mars', 'Avril', 'Mai', 'Juin',  'Juillet', 'AoĂťt', 'Septembre', 'Octobre', 'Novembre', 'DĂŠcembre'],
		weekdays: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi']
	}
});</pre>
*/
@interface Lang: HIChartsJSONSerializable

/**
* description: Short week days, starting Sunday. If not specified, Highcharts uses the first three letters of the <code>lang.weekdays</code> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/shortweekdays/" target="_blank">Finnish two-letter abbreviations</a>.
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *shortWeekdays;
/**
* description: An array containing the months names. Corresponds to the 
 <code>%B</code> format in <code>Highcharts.dateFormat()</code>.
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *months;
/**
* description: The text for the label appearing when a chart is zoomed.
*/
@property(nonatomic, readwrite) NSString *resetZoom;
/**
* description: The text to display when the chart contains no data. Requires the no-data module, see <a href="#noData">noData</a>.
*/
@property(nonatomic, readwrite) NSString *noData;
/**
* description: Exporting module only. The text for the PDF download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadPDF;
/**
* description: The magnitude of <a href="#lang.numericSymbol">numericSymbols</a> replacements. Use 10000 for Japanese, Korean and various Chinese locales, which use symbols for 10^4, 10^8 and 10^12.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/numericsymbolmagnitude/" target="_blank">10000 magnitude for Japanese</a>
*/
@property(nonatomic, readwrite) NSNumber *numericSymbolMagnitude;
/**
* description: An array containing the weekday names.		 
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *weekdays;
/**
* description: Exporting module only. The text for the menu item to print the chart.
*/
@property(nonatomic, readwrite) NSString *printChart;
/**
* description: What to show in a date field for invalid dates. Defaults to an empty string.
*/
@property(nonatomic, readwrite) NSString *invalidDate;
/**
* description: <a href="http://en.wikipedia.org/wiki/Metric_prefix">Metric prefixes</a> used to shorten high numbers in axis labels. Replacing any of the positions with <code>null</code> causes the full number to be written. Setting <code>numericSymbols</code> to <code>null</code> disables shortening altogether.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/numericsymbols/" target="_blank">Replacing the symbols with text</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *numericSymbols;
/**
* description: The tooltip title for the label appearing when a chart is zoomed.
*/
@property(nonatomic, readwrite) NSString *resetZoomTitle;
/**
* description: The default decimal point used in the <code>Highcharts.numberFormat</code> method unless otherwise specified in the function arguments.
*/
@property(nonatomic, readwrite) NSString *decimalPoint;
/**
* description: Exporting module only. The text for the JPEG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadJPEG;
/**
* description: An array containing the months names in abbreviated form. Corresponds to the  <code>%b</code> format in <code>Highcharts.dateFormat()</code>. 
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *shortMonths;
/**
* description: Exporting module only. The text for the SVG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadSVG;
/**
* description: The text for the button that appears when drilling down, linking back to the parent series. The parent series' name is inserted for <code>{series.name}</code>.
*/
@property(nonatomic, readwrite) NSString *drillUpText;
/**
* description: The loading text that appears when the chart is set into the loading state following a call to <code>chart.showLoading</code>.
*/
@property(nonatomic, readwrite) NSString *loading;
/**
* description: Exporting module menu. The tooltip title for the context menu holding print and export menu items.
*/
@property(nonatomic, readwrite) NSString *contextButtonTitle;
/**
* description: <p>The default thousands separator used in the <code>Highcharts.numberFormat</code> method unless otherwise specified in the function arguments. Since Highcharts 4.1 it defaults to a single space character, which is compatible with ISO and works across Anglo-American and continental European languages.</p>

<p>The default is a single space.</p>
*/
@property(nonatomic, readwrite) NSString *thousandsSep;
/**
* description: Exporting module only. The text for the PNG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadPNG;

-(NSDictionary *)getParams;

@end
