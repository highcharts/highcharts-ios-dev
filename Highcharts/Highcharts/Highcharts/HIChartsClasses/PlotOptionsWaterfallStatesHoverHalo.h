#import "HIChartsJSONSerializable.h"


/**
* description: <p>Options for the halo appearing around the hovered point in line-type series as well as outside the hovered slice in pie charts. By default the halo is filled by the current point or series color with an opacity of 0.25. The halo can be disabled by setting the <code>halo</code> option to <code>false</code>.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the halo is styled with the <code>.highcharts-halo</code> class, with colors inherited from <code>.highcharts-color-{n}</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/" target="_blank">Halo options</a>
*/
@interface PlotOptionsWaterfallStatesHoverHalo: HIChartsJSONSerializable

/**
* description: Opacity for the halo unless a specific fill is overridden using the <code>attributes</code> setting. Note that Highcharts is only able to apply opacity to colors of hex or rgb(a) formats.
*/
@property(nonatomic, readwrite) NSNumber *opacity;
/**
* description: A collection of SVG attributes to override the appearance of the halo, for example <code>fill</code>, <code>stroke</code> and <code>stroke-width</code>.
*/
@property(nonatomic, readwrite) id attributes;
/**
* description: The pixel size of the halo. For point markers this is the radius of the halo. For pie slices it is the width of the halo outside the slice. For bubbles it defaults to 5 and is the width of the halo outside the bubble.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
