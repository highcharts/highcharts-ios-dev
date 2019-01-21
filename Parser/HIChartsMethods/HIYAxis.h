/**
 Add a plot band after render time.
 
 **Try it**
 
 * [Toggle the plot band from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-addplotband/)
 
 @param options A configuration object for the plot band, as defined in [xAxis.plotBands](https://api.highcharts.com/highcharts/xAxis.plotBands).
 */
-(void)addPlotBand:(HIPlotBands *)options;

/**
 Add a plot line after render time.
 
 **Try it**
 
 * [Toggle the plot line from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-addplotline/)
 
 @param options A configuration object for the plot line, as defined in [xAxis.plotLines](https://api.highcharts.com/highcharts/xAxis.plotLines).
 */
-(void)addPlotLine:(HIPlotLines *)options;

/**
 Adds the title defined in axis.options.title.
 @param display Whether or not to display the title.
 */
-(void)addTitle:(NSNumber /* Bool */ *)display;

/**
 Internal function to draw a crosshair.
 
 **Fires:**
 
 * Highcharts.Axis#event:afterDrawCrosshair
 * Highcharts.Axis#event:drawCrosshair
 */
-(void)drawCrosshair;

/**
 Hide the crosshair if visible.
 */
-(void)hideCrosshair;

/**
 Remove the axis from the chart.
 
 **Try it**
 
 * [Add and remove axes](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/chart-addaxis/)
 */
-(void)remove;

/**
 Remove the axis from the chart.
 
 **Try it**
 
 * [Add and remove axes](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/chart-addaxis/)
 @param redraw Whether to redraw the chart following the remove.
 */
-(void)remove:(NSNumber /* Bool */ *)redraw;

/**
 Remove a plot band by its id.
 
 **Try it**
 
 * [Remove plot band by id](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-removeplotband/)
 * [Toggle the plot band from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-addplotband/)
 
 @param id The plot band's `id` as given in the original configuration object or in the `addPlotBand` option.
 */
-(void)removePlotBand:(NSString *)id;

/**
 Remove a plot line by its id.
 
 **Try it**
 
 * [Remove plot line by id](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-removeplotband/)
 * [Toggle the plot line from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-addplotline/)
 
 @param id The plot line's `id` as given in the original configuration object or in the `addPlotLine` option.
 */
-(void)removePlotLine:(NSString *)id;

/**
 Render the axis line. Called internally when rendering and redrawing the axis.
 */
-(void)renderLine;

/**
 Render a minor tick into the given position. If a minor tick already exists in this position, move it.
 @param pos The position in axis values.
 */
-(void)renderMinorTick:(NSNumber *)pos;

/**
 Render a major tick into the given position. If a tick already exists in this position, move it.
 @param pos The position in axis values.
 @param i The tick index.
 */
-(void)renderTick:(NSNumber *)pos index:(NSNumber *)i;

/**
 Set new axis categories and optionally redraw.
 
 **Try it**
 
 * [Set categories by click on a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setcategories/)
 
 @param categories The new categories.
 */
-(void)setAxisCategories:(NSArray<NSString *> *)categories;

/**
 Set new axis categories and optionally redraw.
 
 **Try it**
 
 * [Set categories by click on a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setcategories/)
 
 @param categories The new categories.
 @param redraw Whether to redraw the chart.
 */
-(void)setAxisCategories:(NSArray<NSString *> *)categories redraw:(NSNumber /* Bool */ *)redraw;

/**
 Set the minimum and maximum of the axes after render time. If the `startOnTick` and `endOnTick` options are true, the minimum and maximum values are rounded off to the nearest tick. To prevent this, these options can be set to false before calling setExtremes. Also, setExtremes will not allow a range lower than the `minRange` option, which by default is the range of five points.
 
 **Try it**
 
 * [Set extremes from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes/)
 * [Set extremes on a datetime axis](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-datetime/)
 * [Set extremes off ticks](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-off-ticks/)
 */
-(void)setExtremes;

/**
 Set the minimum and maximum of the axes after render time. If the `startOnTick` and `endOnTick` options are true, the minimum and maximum values are rounded off to the nearest tick. To prevent this, these options can be set to false before calling setExtremes. Also, setExtremes will not allow a range lower than the `minRange` option, which by default is the range of five points.
 
 **Try it**
 
 * [Set extremes from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes/)
 * [Set extremes on a datetime axis](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-datetime/)
 * [Set extremes off ticks](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-off-ticks/)
 
 @param newMin The new minimum value.
 */
-(void)setExtremes:(NSNumber *)newMin;

/**
 Set the minimum and maximum of the axes after render time. If the `startOnTick` and `endOnTick` options are true, the minimum and maximum values are rounded off to the nearest tick. To prevent this, these options can be set to false before calling setExtremes. Also, setExtremes will not allow a range lower than the `minRange` option, which by default is the range of five points.
 
 **Try it**
 
 * [Set extremes from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes/)
 * [Set extremes on a datetime axis](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-datetime/)
 * [Set extremes off ticks](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-off-ticks/)
 
 @param newMin The new minimum value.
 @param newMax The new maximum value.
 */
-(void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax;

/**
 Set the minimum and maximum of the axes after render time. If the `startOnTick` and `endOnTick` options are true, the minimum and maximum values are rounded off to the nearest tick. To prevent this, these options can be set to false before calling setExtremes. Also, setExtremes will not allow a range lower than the `minRange` option, which by default is the range of five points.
 
 **Try it**
 
 * [Set extremes from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes/)
 * [Set extremes on a datetime axis](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-datetime/)
 * [Set extremes off ticks](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-off-ticks/)
 
 @param newMin The new minimum value.
 @param newMax The new maximum value.
 @param redraw Whether to redraw the chart or wait for an explicit call to [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw)
 */
-(void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber /* Bool */ *)redraw;

/**
 Set the minimum and maximum of the axes after render time. If the `startOnTick` and `endOnTick` options are true, the minimum and maximum values are rounded off to the nearest tick. To prevent this, these options can be set to false before calling setExtremes. Also, setExtremes will not allow a range lower than the `minRange` option, which by default is the range of five points.
 
 **Try it**
 
 * [Set extremes from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes/)
 * [Set extremes on a datetime axis](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-datetime/)
 * [Set extremes off ticks](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-setextremes-off-ticks/)
 
 @param newMin The new minimum value.
 @param newMax The new maximum value.
 @param redraw Whether to redraw the chart or wait for an explicit call to [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw)
 @param animation Enable or modify animations.
 */
-(void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;

/**
 Now we have computed the normalized tickInterval, get the tick positions
 
 **Fires:**
 
 * Highcharts.Axis#event:afterSetTickPositions
 */
-(void)setTickPositions;

/**
 Update the axis title by options after render time.
 
 **Try it**
 
 * [Set a new Y axis title](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-settitle/)
 
 @param title The additional title options.
 */
-(void)setAxisTitle:(HITitle *)title;

/**
 Update the axis title by options after render time.
 
 **Try it**
 
 * [Set a new Y axis title](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-settitle/)
 
 @param title The additional title options.
 @param redraw Whether to redraw the chart after setting the title.
 */
-(void)setAxisTitle:(HITitle *)title redraw:(NSNumber /* Bool */ *)redraw;

/**
 Update an axis object with a new set of options. The options are merged with the existing options, so only new or altered options need to be specified.
 
 **Try it**
 
 * [Axis update demo](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-update/)
 
 @param options The new options that will be merged in with existing options on the axis.
 */
-(void)update:(HIYAxis *)options;

/**
 Update an axis object with a new set of options. The options are merged with the existing options, so only new or altered options need to be specified.
 
 **Try it**
 
 * [Axis update demo](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/axis-update/)
 
 @param options The new options that will be merged in with existing options on the axis.
 @param redraw Whether to redraw the chart after the axis is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 */
-(void)update:(HIYAxis *)options redraw:(NSNumber /* Bool */ *)redraw;