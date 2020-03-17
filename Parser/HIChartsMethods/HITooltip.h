/**
 In case no user defined formatter is given, this will be used. Note that the context here is an object holding point, series, x, y etc.
 @param tooltip Tooltip
 */
-(void)defaultFormatter:(HITooltip *)tooltip;

/**
 Removes and destroys the tooltip and its elements.
 */
-(void)destroy;

/**
 Creates the Tooltip label element if it does not exist.
 */
-(void)getLabel;

/**
 Hides the tooltip with a fade out animation.
 */
-(void)hide;

/**
 Hides the tooltip with a fade out animation.
 @param delay The fade out in milliseconds. If no value is provided the value of the tooltip.hideDelay option is used. A value of 0 disables the fade out animation.
 */
-(void)hide:(NSNumber *)delay;

/**
 Refresh the tooltip's text and position.
 @param point A point.
 */
-(void)refreshByPoint:(HIPoint *)point;

/**
Refresh the tooltip's text and position.
@param points An array of points.
*/
-(void)refreshByPoints:(NSArray<HIPoint *> *)points;

/**
 Updates the tooltip with the provided tooltip options.
 @param options The tooltip options to update.
 */
-(void)update:(HITooltip *)options;