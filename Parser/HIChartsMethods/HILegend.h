/**
 Set the legend item text.
 @param item The item for which to update the text in the legend.
 */
-(void)setPointText:(HIPoint *)item;

/**
 Set the legend item text.
 @param item The item for which to update the text in the legend.
 */
-(void)setSeriesText:(HISeries *)item;

/**
 Update the legend with new options. Equivalent to running `chart.update` with a legend configuration option.
 
 **Fires:**
 
 * Highcharts.Legends#event:afterUpdate
 
 **Try it**
 
 * [Legend update](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/legend/legend-update/)
 
 @param options Legend options.
 */
-(void)update:(HILegend *)options;

/**
 Update the legend with new options. Equivalent to running `chart.update` with a legend configuration option.
 
 **Fires:**
 
 * Highcharts.Legends#event:afterUpdate
 
 **Try it**
 
 * [Legend update](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/legend/legend-update/)
 
 @param options Legend options.
 @param redraw Whether to redraw the chart after the axis is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after. Whether to redraw the chart.
 */
-(void)update:(HILegend *)options redraw:(NSNumber /* Bool */ *)redraw;