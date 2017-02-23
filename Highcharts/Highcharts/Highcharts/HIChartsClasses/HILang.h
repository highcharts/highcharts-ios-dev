#import "HIChartsJSONSerializable.h"


/**
* description: Language object. The language object is global and it can't
		be set on each chart initiation. Instead, use Highcharts.setOptions to
		set it before any chart is initiated. 
Highcharts.setOptions({
	lang: {
		months: ['Janvier', 'FĂŠvrier', 'Mars', 'Avril', 'Mai', 'Juin',  'Juillet', 'AoĂťt', 'Septembre', 'Octobre', 'Novembre', 'DĂŠcembre'],
		weekdays: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi']
	}
});
*/
@interface HILang: HIChartsJSONSerializable

/**
* description: Short week days, starting Sunday. If not specified, Highcharts uses the first three letters of the lang.weekdays option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/shortweekdays/ : Finnish two-letter abbreviations.
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *shortWeekdays;
/**
* description: An array containing the months names. Corresponds to the 
 %B format in Highcharts.dateFormat().
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *months;
/**
* description: The text for the label appearing when a chart is zoomed.
*/
@property(nonatomic, readwrite) NSString *resetZoom;
/**
* description: The text to display when the chart contains no data. Requires the no-data module, see noData.
*/
@property(nonatomic, readwrite) NSString *noData;
/**
* description: Exporting module only. The text for the PDF download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadPDF;
/**
* description: The magnitude of numericSymbols replacements. Use 10000 for Japanese, Korean and various Chinese locales, which use symbols for 10^4, 10^8 and 10^12.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/numericsymbolmagnitude/ : 10000 magnitude for Japanese
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
* description: http://en.wikipedia.org/wiki/Metric_prefix : Metric prefixes used to shorten high numbers in axis labels. Replacing any of the positions with null causes the full number to be written. Setting numericSymbols to null disables shortening altogether.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/lang/numericsymbols/ : Replacing the symbols with text
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *numericSymbols;
/**
* description: The tooltip title for the label appearing when a chart is zoomed.
*/
@property(nonatomic, readwrite) NSString *resetZoomTitle;
/**
* description: The default decimal point used in the Highcharts.numberFormat method unless otherwise specified in the function arguments.
*/
@property(nonatomic, readwrite) NSString *decimalPoint;
/**
* description: Exporting module only. The text for the JPEG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadJPEG;
/**
* description: An array containing the months names in abbreviated form. Corresponds to the  %b format in Highcharts.dateFormat(). 
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *shortMonths;
/**
* description: Exporting module only. The text for the SVG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadSVG;
/**
* description: The text for the button that appears when drilling down, linking back to the parent series. The parent series' name is inserted for {series.name}.
*/
@property(nonatomic, readwrite) NSString *drillUpText;
/**
* description: The loading text that appears when the chart is set into the loading state following a call to chart.showLoading.
*/
@property(nonatomic, readwrite) NSString *loading;
/**
* description: Exporting module menu. The tooltip title for the context menu holding print and export menu items.
*/
@property(nonatomic, readwrite) NSString *contextButtonTitle;
/**
* description: The default thousands separator used in the Highcharts.numberFormat method unless otherwise specified in the function arguments. Since Highcharts 4.1 it defaults to a single space character, which is compatible with ISO and works across Anglo-American and continental European languages.
The default is a single space.
*/
@property(nonatomic, readwrite) NSString *thousandsSep;
/**
* description: Exporting module only. The text for the PNG download menu item.
*/
@property(nonatomic, readwrite) NSString *downloadPNG;

-(NSDictionary *)getParams;

@end
