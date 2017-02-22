#import "HIResponsiveRulesCondition.h"


/**
* description: A set of rules for responsive settings. The rules are executed from the top down.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/axis/" target="_blank">Axis changes</a>
*/
@interface HIResponsiveRules: HIChartsJSONSerializable

/**
* description: Under which conditions the rule applies.
*/
@property(nonatomic, readwrite) HIResponsiveRulesCondition *condition;
/**
* description: <p>A full set of chart options to apply as overrides to the general chart options. The chart options are applied when the given rule is active.</p>

<p>A special case is configuration objects that take arrays, for example <a href="#xAxis">xAxis</a>, <a href="#yAxis">yAxis</a> or <a href="#series">series</a>. For these collections, an <code>id</code> option is used to map the new option set to an existing object. If an existing object of the same id is not found, the first item is updated. So for example, setting <code>chartOptions</code> with a series item without an <code>id</code>, will cause the existing chart's first series to be updated.</p>
* demo: Chart options overrides for <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/axis/" target="_blank">axis</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/legend/" target="_blank">legend</a> and <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/classname/" target="_blank">class name</a>.
*/
@property(nonatomic, readwrite) id chartOptions;

-(NSDictionary *)getParams;

@end
