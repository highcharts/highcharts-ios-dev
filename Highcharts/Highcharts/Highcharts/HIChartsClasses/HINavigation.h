#import "HINavigationButtonOptions.h"


/**
* description: A collection of options for buttons and menus appearing in the exporting module.
*/
@interface HINavigation: HIChartsJSONSerializable

/**
* description: CSS styles for the hover state of the individual items within the popup menu appearing by  default when the export icon is clicked. The menu items are rendered in HTML.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemhoverstyle/" target="_blank">Bold text on hover</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *menuItemHoverStyle;
/**
* description: CSS styles for the popup menu appearing by default when the export icon is clicked. This menu is rendered in HTML.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/menustyle/" target="_blank">Light gray menu background</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *menuStyle;
/**
* description: <p>A collection of options for buttons appearing in the exporting module.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the buttons are styled with the <code>.highcharts-contextbutton</code> and <code>.highcharts-button-symbol</code> class.</p>
*/
@property(nonatomic, readwrite) HINavigationButtonOptions *buttonOptions;
/**
* description: CSS styles for the individual items within the popup menu appearing by  default when the export icon is clicked. The menu items are rendered in HTML.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemstyle/" target="_blank">Add a grey stripe to the left</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *menuItemStyle;

-(NSDictionary *)getParams;

@end
