/**
 Hide or show annotaiton attached to points.
 */
-(void)adjustLabelVisibility:(HILabels *)item;

/**
 Hide or show annotaiton attached to points.
 */
-(void)adjustShapeVisibility:(HIShapes *)item;

/**
Destroy the annotation. This function does not touch the chart that the annotation belongs to (all annotations are kept in the chart.annotations array) - it is recommended to use [Highcharts.Chart#removeAnnotation](https://api.highcharts.com/class-reference/Highcharts.Chart.html#removeAnnotation) instead.
 */
-(void)destroy;

/**
 Destroy a single item.
 */
-(void)destroyLabelItem:(HILabels *)item;

/**
 Destroy a single item.
 */
-(void)destroyShapeItem:(HIShapes *)item;

/**
 Initialisation of a single label
 */
-(void)initLabel:(HILabels *)labelOptions;

/**
 Initialisation of a single shape
 @param shapeOptions a confg object for a single shape
 */
-(void)initShape:(HIShapes *)shapeOptions;

/**
 Redraw a single item.
 */
-(void)redrawLabelItem:(HILabels *)item;

/**
 Redraw a single item.
 */
-(void)redrawLabelItem:(HILabels *)item animation:(NSNumber /* Bool */ *)animation;

/**
 Redraw a single item.
 */
-(void)redrawShapeItem:(HIShapes *)item;

/**
 Redraw a single item.
 */
-(void)redrawShapeItem:(HIShapes *)item animation:(NSNumber /* Bool */ *)animation;

-(void)redrawLabelItems:(NSArray <HILabels *> *)items;

-(void)redrawLabelItems:(NSArray <HILabels *> *)items animation:(NSNumber /* Bool */ *)animation;

-(void)redrawShapeItems:(NSArray <HIShapes *> *)items;

-(void)redrawShapeItems:(NSArray <HIShapes *> *)items animation:(NSNumber /* Bool */ *)animation;

/**
 See Highcharts.Annotation#destroy.
 */
-(void)remove;

/**
 Set an annotation options.
 */
-(void)setOptions;

/**
 Set the annotation's visibility.
 */
-(void)setVisibility;

/**
 Set the annotation's visibility.
 @param visible Whether to show or hide an annotation. If the param is omitted, the annotation's visibility is toggled.
 */
-(void)setVisibility:(NSNumber /* Bool */ *)visible;