/**
 Add a point to the series after render time. The point can be added at the end, or by giving it an X value, to the start or in the middle of the series.
 
 **Try it**
 
 * [Append point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append/)
 * [Append and shift](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append-and-shift/)
 * [Both X and Y values given](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-x-and-y/)
 * [Append pie slice](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-pie/)
 
 @param options The point options. If options is a single number, a point with that y value is appended to the series. If it is an array, it will be interpreted as x and y values respectively. If it is an object, advanced options as outlined under `series.data` are applied.
 */
-(void)addPoint:(HIData *)options;

/**
 Add a point to the series after render time. The point can be added at the end, or by giving it an X value, to the start or in the middle of the series.
 
 **Try it**
 
 * [Append point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append/)
 * [Append and shift](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append-and-shift/)
 * [Both X and Y values given](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-x-and-y/)
 * [Append pie slice](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-pie/)
 
 @param options The point options. If options is a single number, a point with that y value is appended to the series. If it is an array, it will be interpreted as x and y values respectively. If it is an object, advanced options as outlined under `series.data` are applied.
 @param redraw Whether to redraw the chart after the point is added. When adding more than one point, it is highly recommended that the redraw option be set to false, and instead [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) is explicitly called after the adding of points is finished. Otherwise, the chart will redraw after adding each point.
 */
-(void)addPoint:(HIData *)options redraw:(NSNumber /* Bool */ *)redraw;

/**
 Add a point to the series after render time. The point can be added at the end, or by giving it an X value, to the start or in the middle of the series.
 
 **Try it**
 
 * [Append point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append/)
 * [Append and shift](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append-and-shift/)
 * [Both X and Y values given](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-x-and-y/)
 * [Append pie slice](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-pie/)
 
 @param options The point options. If options is a single number, a point with that y value is appended to the series. If it is an array, it will be interpreted as x and y values respectively. If it is an object, advanced options as outlined under `series.data` are applied.
 @param redraw Whether to redraw the chart after the point is added. When adding more than one point, it is highly recommended that the redraw option be set to false, and instead [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) is explicitly called after the adding of points is finished. Otherwise, the chart will redraw after adding each point.
 @param shift If true, a point is shifted off the start of the series as one is appended to the end.
 */
-(void)addPoint:(HIData *)options redraw:(NSNumber /* Bool */ *)redraw shift:(NSNumber /* Bool */ *)shift;

/**
 Add a point to the series after render time. The point can be added at the end, or by giving it an X value, to the start or in the middle of the series.
 
 **Try it**
 
 * [Append point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append/)
 * [Append and shift](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-append-and-shift/)
 * [Both X and Y values given](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-x-and-y/)
 * [Append pie slice](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-addpoint-pie/)
 
 @param options The point options. If options is a single number, a point with that y value is appended to the series. If it is an array, it will be interpreted as x and y values respectively. If it is an object, advanced options as outlined under `series.data` are applied.
 @param redraw Whether to redraw the chart after the point is added. When adding more than one point, it is highly recommended that the redraw option be set to false, and instead [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) is explicitly called after the adding of points is finished. Otherwise, the chart will redraw after adding each point.
 @param shift If true, a point is shifted off the start of the series as one is appended to the end.
 @param animation Whether to apply animation, and optionally animation configuration.
 */
-(void)addPoint:(HIData *)options redraw:(NSNumber /* Bool */ *)redraw shift:(NSNumber /* Bool */ *)shift animation:(HIAnimationOptionsObject *)animation;

/**
 Animate in the series. Called internally twice. First with the `init` parameter set to true, which sets up the initial state of the animation. Then when ready, it is called with the `init` parameter undefined, in order to perform the actual animation. After the second run, the function is removed.
 @param init Initialize the animation.
 */
-(void)animate:(NSNumber /* Bool */ *)init;

/**
 Draw the graph. Called internally when rendering line-like series types. The first time it generates the `series.graph` item and optionally other series-wide items like `series.area` for area charts. On subsequent calls these items are updated with new positions and attributes.
 */
-(void)drawGraph;

/**
 Draw the markers for line-like series types, and columns or other graphical representation for [Highcharts.Point](https://api.highcharts.com/class-reference/Highcharts.Point.html) objects for other series types. The resulting element is typically stored as [Highcharts.Point.graphic](https://api.highcharts.com/class-reference/Highcharts.Point.html#.graphic), and is created on the first call and updated and moved on subsequent calls.
 */
-(void)drawPoints;

/**
 Hide the series if visible. If the [chart.ignoreHiddenSeries](https://api.highcharts.com/highcharts/chart.ignoreHiddenSeries) option is true, the chart is redrawn without this series.
 
 **Fires:**
 
 * Highcharts.Series#event:hide
 
 **Try it**
 
 * [Toggle visibility from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-hide/)
 */
-(void)hide;

/**
 Runs on mouse out of the series graphical items.
 
 **Fires:**
 
 * Highcharts.Series#event:mouseOut
 */
-(void)onMouseOut;

/**
 Runs on mouse over the series graphical items.
 
 **Fires:**
 
 * Highcharts.Series#event:mouseOver
 */
-(void)onMouseOver;

/**
 Remove a series and optionally redraw the chart.
 
 **Fires:**
 
 * Highcharts.Series#event:remove
 
 **Try it**
 
 * [Remove first series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-remove/)
 */
-(void)remove;

/**
 Remove a series and optionally redraw the chart.
 
 **Fires:**
 
 * Highcharts.Series#event:remove
 
 **Try it**
 
 * [Remove first series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-remove/)
 
 @param redraw Whether to redraw the chart or wait for an explicit call to [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw).
 */
-(void)remove:(NSNumber /* Bool */ *)redraw;

/**
 Remove a series and optionally redraw the chart.
 
 **Fires:**
 
 * Highcharts.Series#event:remove
 
 **Try it**
 
 * [Remove first series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-remove/)
 
 @param redraw Whether to redraw the chart or wait for an explicit call to [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw).
 @param animation Whether to apply animation, and optionally animation configuration.
 */
-(void)remove:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;

/**
 Remove a series and optionally redraw the chart.
 
 **Fires:**
 
 * Highcharts.Series#event:remove
 
 **Try it**
 
 * [Remove first series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-remove/)
 
 @param redraw Whether to redraw the chart or wait for an explicit call to [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw).
 @param animation Whether to apply animation, and optionally animation configuration.
 @param withEvent Used internally, whether to fire the series `remove` event.
 */
-(void)remove:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation withEvent:(NSNumber /* Bool */ *)withEvent;

/**
 Remove a point from the series. Unlike the [Highcharts.Point#remove](https://api.highcharts.com/class-reference/Highcharts.Point.html#remove) method, this can also be done on a point that is not instanciated because it is outside the view or subject to Highstock data grouping.
 
 **Fires:**
 
 * Highcharts.Point#event:remove
 
 **Try it**
 
 * [Remove cropped point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-removepoint/)
 
 @param i The index of the point in the data array.
 */
-(void)removePoint:(NSNumber *)i;

/**
 Remove a point from the series. Unlike the [Highcharts.Point#remove](https://api.highcharts.com/class-reference/Highcharts.Point.html#remove) method, this can also be done on a point that is not instanciated because it is outside the view or subject to Highstock data grouping.
 
 **Fires:**
 
 * Highcharts.Point#event:remove
 
 **Try it**
 
 * [Remove cropped point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-removepoint/)
 
 @param i The index of the point in the data array.
 @param redraw Whether to redraw the chart after the point is added. When removing more than one point, it is highly recommended that the `redraw` option be set to `false`, and instead [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) is explicitly called after the adding of points is finished.
 */
-(void)removePoint:(NSNumber *)i redraw:(NSNumber /* Bool */ *)redraw;

/**
 Remove a point from the series. Unlike the [Highcharts.Point#remove](https://api.highcharts.com/class-reference/Highcharts.Point.html#remove) method, this can also be done on a point that is not instanciated because it is outside the view or subject to Highstock data grouping.
 
 **Fires:**
 
 * Highcharts.Point#event:remove
 
 **Try it**
 
 * [Remove cropped point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-removepoint/)
 
 @param i The index of the point in the data array.
 @param redraw Whether to redraw the chart after the point is added. When removing more than one point, it is highly recommended that the `redraw` option be set to `false`, and instead [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) is explicitly called after the adding of points is finished.
 @param animation Whether and optionally how the series should be animated.
 */
-(void)removePoint:(NSNumber *)i redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;

/**
 Render the graph and markers. Called internally when first rendering and later when redrawing the chart. This function can be extended in plugins, but normally shouldn't be called directly.
 
 **Fires:**
 
 * Highcharts.Series#event:afterRender
 */
-(void)render;

/**
 Select or unselect the series. This means its selected property is set, the checkbox in the legend is toggled and when selected, the series is returned by the [Highcharts.Chart#getSelectedSeries](https://api.highcharts.com/class-reference/Highcharts.Chart.html#getSelectedSeries) function.
 
 **Fires:**
 
 * Highcharts.Series#event:select
 * Highcharts.Series#event:unselect
 
 **Try it**
 
 * [Select a series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-select/)
 */
-(void)select;

/**
 Select or unselect the series. This means its selected property is set, the checkbox in the legend is toggled and when selected, the series is returned by the [Highcharts.Chart#getSelectedSeries](https://api.highcharts.com/class-reference/Highcharts.Chart.html#getSelectedSeries) function.
 
 **Fires:**
 
 * Highcharts.Series#event:select
 * Highcharts.Series#event:unselect
 
 **Try it**
 
 * [Select a series from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-select/)
 
 @param selected True to select the series, false to unselect. If undefined, the selection state is toggled.
 */
-(void)select:(NSNumber /* Bool */ *)selected;

/**
 Apply a new set of data to the series and optionally redraw it. The new data array is passed by reference (except in case of `updatePoints`), and may later be mutated when updating the chart data.
 
 Note the difference in behaviour when setting the same amount of points, or a different amount of points, as handled by the `updatePoints` parameter.
 
 **Try it**
 
 * [Set new data from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata/)
 * [Set data in a pie](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata-pie/)
 
 @param data Takes an array of data in the same format as described under `series.{type}.data` for the given series type, for example a line series would take data in the form described under [series.line.data](https://api.highcharts.com/highcharts/series.line.data).
 */
-(void)setSeriesData:(NSArray /* <id, NSNumber, NSArray> */ *)data;

/**
 Apply a new set of data to the series and optionally redraw it. The new data array is passed by reference (except in case of `updatePoints`), and may later be mutated when updating the chart data.
 
 Note the difference in behaviour when setting the same amount of points, or a different amount of points, as handled by the `updatePoints` parameter.
 
 **Try it**
 
 * [Set new data from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata/)
 * [Set data in a pie](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata-pie/)
 
 @param data Takes an array of data in the same format as described under `series.{type}.data` for the given series type, for example a line series would take data in the form described under [series.line.data](https://api.highcharts.com/highcharts/series.line.data).
 @param redraw Whether to redraw the chart after the series is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 */
-(void)setSeriesData:(NSArray /* <id, NSNumber, NSArray> */ *)data redraw:(NSNumber /* Bool */ *)redraw;

/**
 Apply a new set of data to the series and optionally redraw it. The new data array is passed by reference (except in case of `updatePoints`), and may later be mutated when updating the chart data.
 
 Note the difference in behaviour when setting the same amount of points, or a different amount of points, as handled by the `updatePoints` parameter.
 
 **Try it**
 
 * [Set new data from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata/)
 * [Set data in a pie](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata-pie/)
 
 @param data Takes an array of data in the same format as described under `series.{type}.data` for the given series type, for example a line series would take data in the form described under [series.line.data](https://api.highcharts.com/highcharts/series.line.data).
 @param redraw Whether to redraw the chart after the series is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 @param animation When the updated data is the same length as the existing data, points will be updated by default, and animation visualizes how the points are changed. Set false to disable animation, or a configuration object to set duration or easing.
 */
-(void)setSeriesData:(NSArray /* <id, NSNumber, NSArray> */ *)data redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;

/**
 Apply a new set of data to the series and optionally redraw it. The new data array is passed by reference (except in case of `updatePoints`), and may later be mutated when updating the chart data.
 
 Note the difference in behaviour when setting the same amount of points, or a different amount of points, as handled by the `updatePoints` parameter.
 
 **Try it**
 
 * [Set new data from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata/)
 * [Set data in a pie](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-setdata-pie/)
 
 @param data Takes an array of data in the same format as described under `series.{type}.data` for the given series type, for example a line series would take data in the form described under [series.line.data](https://api.highcharts.com/highcharts/series.line.data).
 @param redraw Whether to redraw the chart after the series is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 @param animation When the updated data is the same length as the existing data, points will be updated by default, and animation visualizes how the points are changed. Set false to disable animation, or a configuration object to set duration or easing.
 @param updatePoints When this is true, points will be updated instead of replaced whenever possible. This occurs a) when the updated data is the same length as the existing data, b) when points are matched by their id's, or c) when points can be matched by X values. This allows updating with animation and performs better. In this case, the original array is not passed by reference. Set `false` to prevent.
 */
-(void)setSeriesData:(NSArray /* <id, NSNumber, NSArray> */ *)data redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation updatePoints:(NSNumber /* Bool */ *)updatePoints;

/**
 Set the series options by merging from the options tree. Called internally on initiating and updating series. This function will not redraw the series. For API usage, use [Highcharts.Series#update](https://api.highcharts.com/class-reference/Highcharts.Series.html#update).
 
 **Fires:**
 
 * Highcharts.Series#event:afterSetOptions
 
 @param itemOptions The series options.
 */
-(void)setOptions:(HISeries *)itemOptions;

/**
 Set the state of the series. Called internally on mouse interaction operations, but it can also be called directly to visually highlight a series.
 */
-(void)setState;

/**
 Set the state of the series. Called internally on mouse interaction operations, but it can also be called directly to visually highlight a series.
 @param state Can be either `hover` or undefined to set to normal state.
 */
-(void)setState:(NSString *)state;

/**
 Show or hide the series.
 
 **Fires:**
 
 * Highcharts.Series#event:hide
 * Highcharts.Series#event:show
 */
-(void)setSeriesVisible;

/**
 Show or hide the series.
 
 **Fires:**
 
 * Highcharts.Series#event:hide
 * Highcharts.Series#event:show
 
 @param visible True to show the series, false to hide. If undefined, the visibility is toggled.
 */
-(void)setSeriesVisible:(NSNumber /* Bool */ *)visible;

/**
 Show or hide the series.
 
 **Fires:**
 
 * Highcharts.Series#event:hide
 * Highcharts.Series#event:show
 
 @param visible True to show the series, false to hide. If undefined, the visibility is toggled.
 @param redraw Whether to redraw the chart after the series is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [chart.redraw()](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 */
-(void)setSeriesVisible:(NSNumber /* Bool */ *)visible redraw:(NSNumber /* Bool */ *)redraw;

/**
 Show the series if hidden.
 
 **Fires:**
 
 * Highcharts.Series#event:show
 
 **Try it**
 
 * [Toggle visibility from a button](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-hide/)
 */
-(void)show;

/**
 Sonify a series.
 
 **Requires:**
 
 * module:modules/sonification
 
 **Try it**
 
 * [Click on series to sonify](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/sonification/series-basic/)
 * [Series with earcon](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/sonification/series-earcon/)
 * [Play y-axis by time](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/sonification/point-play-time/)
 * [Earcon set on point](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/sonification/earcon-on-point/)
 
 @param options The options for sonifying this series.
 */
-(void)sonify:(NSDictionary *)options;

/**
 Translate data points from raw data values to chart specific positioning data needed later in the `drawPoints` and `drawGraph` functions. This function can be overridden in plugins and custom series type implementations.
 
 **Fires:**
 
 * Highcharts.Series#events:translate
 */
-(void)translate;

/**
 Update the series with a new set of options. For a clean and precise handling of new options, all methods and elements from the series are removed, and it is initiated from scratch. Therefore, this method is more performance expensive than some other utility methods like [Highcharts.Series#setData](https://api.highcharts.com/class-reference/Highcharts.Series.html#setData) or [Highcharts.Series#setVisible](https://api.highcharts.com/class-reference/Highcharts.Series.html#setVisible).
 
 **Fires:**
 
 * Highcharts.Series#event:afterUpdate
 
 **Try it**
 
 * [Updating series options](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-update/)
 
 @param options New options that will be merged with the series' existing options.
 */
-(void)update:(HISeries *)options;

/**
 Update the series with a new set of options. For a clean and precise handling of new options, all methods and elements from the series are removed, and it is initiated from scratch. Therefore, this method is more performance expensive than some other utility methods like [Highcharts.Series#setData](https://api.highcharts.com/class-reference/Highcharts.Series.html#setData) or [Highcharts.Series#setVisible](https://api.highcharts.com/class-reference/Highcharts.Series.html#setVisible).
 
 **Fires:**
 
 * Highcharts.Series#event:afterUpdate
 
 **Try it**
 
 * [Updating series options](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/members/series-update/)
 
 @param options New options that will be merged with the series' existing options.
 @param redraw Whether to redraw the chart after the series is altered. If doing more operations on the chart, it is a good idea to set redraw to false and call [Highcharts.Chart#redraw](https://api.highcharts.com/class-reference/Highcharts.Chart.html#redraw) after.
 */
-(void)update:(HISeries *)options redraw:(NSNumber /* Bool */ *)redraw;