/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HINavigationButtonOptions.h"
#import "HINavigationMenuItemStyle.h"
#import "HINavigationMenuStyle.h"
#import "HINavigationMenuItemHoverStyle.h"


/**
* description: A collection of options for buttons and menus appearing in the exporting module.
*/
@interface HINavigation: HIChartsJSONSerializable

/**
* description: A collection of options for buttons appearing in the exporting module.
In styled mode, the buttons are styled with the .highcharts-contextbutton and .highcharts-button-symbol class.
*/
@property(nonatomic, readwrite) HINavigationButtonOptions *buttonOptions;
/**
* description: CSS styles for the individual items within the popup menu appearing
by default when the export icon is clicked. The menu items are rendered
in HTML.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemstyle/ : Add a grey stripe to the left
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemstyle/ : Add a grey stripe to the left
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemstyle/ : Add a grey stripe to the left
* default: { "padding": "0.5em 1em", "color": "#333333", "background": "none" }
*/
@property(nonatomic, readwrite) HINavigationMenuItemStyle *menuItemStyle;
/**
* description: CSS styles for the popup menu appearing by default when the export
icon is clicked. This menu is rendered in HTML.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menustyle/ : Light gray menu background
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menustyle/ : Light gray menu background
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menustyle/ : Light gray menu background
* default: { "border": "1px solid #999999", "background": "#ffffff", "padding": "5px 0" }
*/
@property(nonatomic, readwrite) HINavigationMenuStyle *menuStyle;
/**
* description: CSS styles for the hover state of the individual items within the
popup menu appearing by default when the export icon is clicked.
 The menu items are rendered in HTML.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemhoverstyle/ : Bold text on hover
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemhoverstyle/ : Bold text on hover
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/navigation/menuitemhoverstyle/ : Bold text on hover
* default: { "background": "#335cad", "color": "#ffffff" }
*/
@property(nonatomic, readwrite) HINavigationMenuItemHoverStyle *menuItemHoverStyle;

-(NSDictionary *)getParams;

@end
