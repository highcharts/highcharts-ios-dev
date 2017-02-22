#import "HIExportingButtonsContextButton.h"


/**
* description: Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See <a href="#navigation.buttonOptions">navigation.buttonOptions</a> for general options.
*/
@interface HIExportingButtons: HIChartsJSONSerializable

/**
* description: <p>Options for the export button.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, export button styles can be applied with the <code>.highcharts-contextbutton</code> class.</p>
*/
@property(nonatomic, readwrite) HIExportingButtonsContextButton *contextButton;

-(NSDictionary *)getParams;

@end
