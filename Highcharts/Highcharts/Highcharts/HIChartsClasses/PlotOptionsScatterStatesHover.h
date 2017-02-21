#import "PlotOptionsScatterStatesHoverHalo.h"
#import "PlotOptionsScatterStatesHoverMarker.h"


/**
* description: Options for the hovered series
*/
@interface PlotOptionsScatterStatesHover: HIChartsJSONSerializable

/**
* description: <p>Options for the halo appearing around the hovered point in line-type series as well as outside the hovered slice in pie charts. By default the halo is filled by the current point or series color with an opacity of 0.25. The halo can be disabled by setting the <code>halo</code> option to <code>false</code>.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the halo is styled with the <code>.highcharts-halo</code> class, with colors inherited from <code>.highcharts-color-{n}</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/" target="_blank">Halo options</a>
*/
@property(nonatomic, readwrite) PlotOptionsScatterStatesHoverHalo *halo;
/**
* description: In Highcharts 1.0, the appearance of all markers belonging to the hovered series. For settings on the hover state of the individual point, see <a href="#plotOptions.series.marker.states.hover">marker.states.hover</a>.
*/
@property(nonatomic, readwrite) PlotOptionsScatterStatesHoverMarker *marker;
/**
* description: The additional line width for the graph of a hovered series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/" target="_blank">5 pixels wider</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: Pixel with of the graph line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidth/" target="_blank">5px line on hover</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: Enable separate styles for the hovered series to visualize that the user hovers either the series itself or the legend.			.
* demo: Disable hover on <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled/" target="_blank">line</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-column/" target="_blank">column</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-pie/" target="_blank">pie</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;

-(NSDictionary *)getParams;

@end
