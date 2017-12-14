#import "HIPlotOptions.h"

@implementation HIPlotOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.polygon) {
		params[@"polygon"] = [self.polygon getParams];
	}
	if (self.solidgauge) {
		params[@"solidgauge"] = [self.solidgauge getParams];
	}
	if (self.wordcloud) {
		params[@"wordcloud"] = [self.wordcloud getParams];
	}
	if (self.arearange) {
		params[@"arearange"] = [self.arearange getParams];
	}
	if (self.scatter3d) {
		params[@"scatter3d"] = [self.scatter3d getParams];
	}
	if (self.heatmap) {
		params[@"heatmap"] = [self.heatmap getParams];
	}
	if (self.funnel) {
		params[@"funnel"] = [self.funnel getParams];
	}
	if (self.spline) {
		params[@"spline"] = [self.spline getParams];
	}
	if (self.bullet) {
		params[@"bullet"] = [self.bullet getParams];
	}
	if (self.sunburst) {
		params[@"sunburst"] = [self.sunburst getParams];
	}
	if (self.tilemap) {
		params[@"tilemap"] = [self.tilemap getParams];
	}
	if (self.area) {
		params[@"area"] = [self.area getParams];
	}
	if (self.treemap) {
		params[@"treemap"] = [self.treemap getParams];
	}
	if (self.errorbar) {
		params[@"errorbar"] = [self.errorbar getParams];
	}
	if (self.vector) {
		params[@"vector"] = [self.vector getParams];
	}
	if (self.variwide) {
		params[@"variwide"] = [self.variwide getParams];
	}
	if (self.areaspline) {
		params[@"areaspline"] = [self.areaspline getParams];
	}
	if (self.streamgraph) {
		params[@"streamgraph"] = [self.streamgraph getParams];
	}
	if (self.xrange) {
		params[@"xrange"] = [self.xrange getParams];
	}
	if (self.column) {
		params[@"column"] = [self.column getParams];
	}
	if (self.gauge) {
		params[@"gauge"] = [self.gauge getParams];
	}
	if (self.bubble) {
		params[@"bubble"] = [self.bubble getParams];
	}
	if (self.bar) {
		params[@"bar"] = [self.bar getParams];
	}
	if (self.waterfall) {
		params[@"waterfall"] = [self.waterfall getParams];
	}
	if (self.areasplinerange) {
		params[@"areasplinerange"] = [self.areasplinerange getParams];
	}
	if (self.columnrange) {
		params[@"columnrange"] = [self.columnrange getParams];
	}
	if (self.sankey) {
		params[@"sankey"] = [self.sankey getParams];
	}
	if (self.scatter) {
		params[@"scatter"] = [self.scatter getParams];
	}
	if (self.variablepie) {
		params[@"variablepie"] = [self.variablepie getParams];
	}
	if (self.pyramid) {
		params[@"pyramid"] = [self.pyramid getParams];
	}
	if (self.bellcurve) {
		params[@"bellcurve"] = [self.bellcurve getParams];
	}
	if (self.windbarb) {
		params[@"windbarb"] = [self.windbarb getParams];
	}
	if (self.boxplot) {
		params[@"boxplot"] = [self.boxplot getParams];
	}
	if (self.pie) {
		params[@"pie"] = [self.pie getParams];
	}
	if (self.pareto) {
		params[@"pareto"] = [self.pareto getParams];
	}
	if (self.line) {
		params[@"line"] = [self.line getParams];
	}
	if (self.histogram) {
		params[@"histogram"] = [self.histogram getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setPolygon:(HIPolygon *)polygon {
	HIPolygon *oldValue = _polygon;
	if(self.polygon) {
		[self removeObserver:self forKeyPath:@"polygon.isUpdated"];
	}
	_polygon = polygon;
	[self updateHIObject:oldValue newValue:polygon propertyName:@"polygon"];
}

-(void)setSolidgauge:(HISolidgauge *)solidgauge {
	HISolidgauge *oldValue = _solidgauge;
	if(self.solidgauge) {
		[self removeObserver:self forKeyPath:@"solidgauge.isUpdated"];
	}
	_solidgauge = solidgauge;
	[self updateHIObject:oldValue newValue:solidgauge propertyName:@"solidgauge"];
}

-(void)setWordcloud:(HIWordcloud *)wordcloud {
	HIWordcloud *oldValue = _wordcloud;
	if(self.wordcloud) {
		[self removeObserver:self forKeyPath:@"wordcloud.isUpdated"];
	}
	_wordcloud = wordcloud;
	[self updateHIObject:oldValue newValue:wordcloud propertyName:@"wordcloud"];
}

-(void)setArearange:(HIArearange *)arearange {
	HIArearange *oldValue = _arearange;
	if(self.arearange) {
		[self removeObserver:self forKeyPath:@"arearange.isUpdated"];
	}
	_arearange = arearange;
	[self updateHIObject:oldValue newValue:arearange propertyName:@"arearange"];
}

-(void)setScatter3d:(HIScatter3d *)scatter3d {
	HIScatter3d *oldValue = _scatter3d;
	if(self.scatter3d) {
		[self removeObserver:self forKeyPath:@"scatter3d.isUpdated"];
	}
	_scatter3d = scatter3d;
	[self updateHIObject:oldValue newValue:scatter3d propertyName:@"scatter3d"];
}

-(void)setHeatmap:(HIHeatmap *)heatmap {
	HIHeatmap *oldValue = _heatmap;
	if(self.heatmap) {
		[self removeObserver:self forKeyPath:@"heatmap.isUpdated"];
	}
	_heatmap = heatmap;
	[self updateHIObject:oldValue newValue:heatmap propertyName:@"heatmap"];
}

-(void)setFunnel:(HIFunnel *)funnel {
	HIFunnel *oldValue = _funnel;
	if(self.funnel) {
		[self removeObserver:self forKeyPath:@"funnel.isUpdated"];
	}
	_funnel = funnel;
	[self updateHIObject:oldValue newValue:funnel propertyName:@"funnel"];
}

-(void)setSpline:(HISpline *)spline {
	HISpline *oldValue = _spline;
	if(self.spline) {
		[self removeObserver:self forKeyPath:@"spline.isUpdated"];
	}
	_spline = spline;
	[self updateHIObject:oldValue newValue:spline propertyName:@"spline"];
}

-(void)setBullet:(HIBullet *)bullet {
	HIBullet *oldValue = _bullet;
	if(self.bullet) {
		[self removeObserver:self forKeyPath:@"bullet.isUpdated"];
	}
	_bullet = bullet;
	[self updateHIObject:oldValue newValue:bullet propertyName:@"bullet"];
}

-(void)setSunburst:(HISunburst *)sunburst {
	HISunburst *oldValue = _sunburst;
	if(self.sunburst) {
		[self removeObserver:self forKeyPath:@"sunburst.isUpdated"];
	}
	_sunburst = sunburst;
	[self updateHIObject:oldValue newValue:sunburst propertyName:@"sunburst"];
}

-(void)setTilemap:(HITilemap *)tilemap {
	HITilemap *oldValue = _tilemap;
	if(self.tilemap) {
		[self removeObserver:self forKeyPath:@"tilemap.isUpdated"];
	}
	_tilemap = tilemap;
	[self updateHIObject:oldValue newValue:tilemap propertyName:@"tilemap"];
}

-(void)setArea:(HIArea *)area {
	HIArea *oldValue = _area;
	if(self.area) {
		[self removeObserver:self forKeyPath:@"area.isUpdated"];
	}
	_area = area;
	[self updateHIObject:oldValue newValue:area propertyName:@"area"];
}

-(void)setTreemap:(HITreemap *)treemap {
	HITreemap *oldValue = _treemap;
	if(self.treemap) {
		[self removeObserver:self forKeyPath:@"treemap.isUpdated"];
	}
	_treemap = treemap;
	[self updateHIObject:oldValue newValue:treemap propertyName:@"treemap"];
}

-(void)setErrorbar:(HIErrorbar *)errorbar {
	HIErrorbar *oldValue = _errorbar;
	if(self.errorbar) {
		[self removeObserver:self forKeyPath:@"errorbar.isUpdated"];
	}
	_errorbar = errorbar;
	[self updateHIObject:oldValue newValue:errorbar propertyName:@"errorbar"];
}

-(void)setVector:(HIVector *)vector {
	HIVector *oldValue = _vector;
	if(self.vector) {
		[self removeObserver:self forKeyPath:@"vector.isUpdated"];
	}
	_vector = vector;
	[self updateHIObject:oldValue newValue:vector propertyName:@"vector"];
}

-(void)setVariwide:(HIVariwide *)variwide {
	HIVariwide *oldValue = _variwide;
	if(self.variwide) {
		[self removeObserver:self forKeyPath:@"variwide.isUpdated"];
	}
	_variwide = variwide;
	[self updateHIObject:oldValue newValue:variwide propertyName:@"variwide"];
}

-(void)setAreaspline:(HIAreaspline *)areaspline {
	HIAreaspline *oldValue = _areaspline;
	if(self.areaspline) {
		[self removeObserver:self forKeyPath:@"areaspline.isUpdated"];
	}
	_areaspline = areaspline;
	[self updateHIObject:oldValue newValue:areaspline propertyName:@"areaspline"];
}

-(void)setStreamgraph:(HIStreamgraph *)streamgraph {
	HIStreamgraph *oldValue = _streamgraph;
	if(self.streamgraph) {
		[self removeObserver:self forKeyPath:@"streamgraph.isUpdated"];
	}
	_streamgraph = streamgraph;
	[self updateHIObject:oldValue newValue:streamgraph propertyName:@"streamgraph"];
}

-(void)setXrange:(HIXrange *)xrange {
	HIXrange *oldValue = _xrange;
	if(self.xrange) {
		[self removeObserver:self forKeyPath:@"xrange.isUpdated"];
	}
	_xrange = xrange;
	[self updateHIObject:oldValue newValue:xrange propertyName:@"xrange"];
}

-(void)setColumn:(HIColumn *)column {
	HIColumn *oldValue = _column;
	if(self.column) {
		[self removeObserver:self forKeyPath:@"column.isUpdated"];
	}
	_column = column;
	[self updateHIObject:oldValue newValue:column propertyName:@"column"];
}

-(void)setGauge:(HIGauge *)gauge {
	HIGauge *oldValue = _gauge;
	if(self.gauge) {
		[self removeObserver:self forKeyPath:@"gauge.isUpdated"];
	}
	_gauge = gauge;
	[self updateHIObject:oldValue newValue:gauge propertyName:@"gauge"];
}

-(void)setBubble:(HIBubble *)bubble {
	HIBubble *oldValue = _bubble;
	if(self.bubble) {
		[self removeObserver:self forKeyPath:@"bubble.isUpdated"];
	}
	_bubble = bubble;
	[self updateHIObject:oldValue newValue:bubble propertyName:@"bubble"];
}

-(void)setBar:(HIBar *)bar {
	HIBar *oldValue = _bar;
	if(self.bar) {
		[self removeObserver:self forKeyPath:@"bar.isUpdated"];
	}
	_bar = bar;
	[self updateHIObject:oldValue newValue:bar propertyName:@"bar"];
}

-(void)setWaterfall:(HIWaterfall *)waterfall {
	HIWaterfall *oldValue = _waterfall;
	if(self.waterfall) {
		[self removeObserver:self forKeyPath:@"waterfall.isUpdated"];
	}
	_waterfall = waterfall;
	[self updateHIObject:oldValue newValue:waterfall propertyName:@"waterfall"];
}

-(void)setAreasplinerange:(HIAreasplinerange *)areasplinerange {
	HIAreasplinerange *oldValue = _areasplinerange;
	if(self.areasplinerange) {
		[self removeObserver:self forKeyPath:@"areasplinerange.isUpdated"];
	}
	_areasplinerange = areasplinerange;
	[self updateHIObject:oldValue newValue:areasplinerange propertyName:@"areasplinerange"];
}

-(void)setColumnrange:(HIColumnrange *)columnrange {
	HIColumnrange *oldValue = _columnrange;
	if(self.columnrange) {
		[self removeObserver:self forKeyPath:@"columnrange.isUpdated"];
	}
	_columnrange = columnrange;
	[self updateHIObject:oldValue newValue:columnrange propertyName:@"columnrange"];
}

-(void)setSankey:(HISankey *)sankey {
	HISankey *oldValue = _sankey;
	if(self.sankey) {
		[self removeObserver:self forKeyPath:@"sankey.isUpdated"];
	}
	_sankey = sankey;
	[self updateHIObject:oldValue newValue:sankey propertyName:@"sankey"];
}

-(void)setScatter:(HIScatter *)scatter {
	HIScatter *oldValue = _scatter;
	if(self.scatter) {
		[self removeObserver:self forKeyPath:@"scatter.isUpdated"];
	}
	_scatter = scatter;
	[self updateHIObject:oldValue newValue:scatter propertyName:@"scatter"];
}

-(void)setVariablepie:(HIVariablepie *)variablepie {
	HIVariablepie *oldValue = _variablepie;
	if(self.variablepie) {
		[self removeObserver:self forKeyPath:@"variablepie.isUpdated"];
	}
	_variablepie = variablepie;
	[self updateHIObject:oldValue newValue:variablepie propertyName:@"variablepie"];
}

-(void)setPyramid:(HIPyramid *)pyramid {
	HIPyramid *oldValue = _pyramid;
	if(self.pyramid) {
		[self removeObserver:self forKeyPath:@"pyramid.isUpdated"];
	}
	_pyramid = pyramid;
	[self updateHIObject:oldValue newValue:pyramid propertyName:@"pyramid"];
}

-(void)setBellcurve:(HIBellcurve *)bellcurve {
	HIBellcurve *oldValue = _bellcurve;
	if(self.bellcurve) {
		[self removeObserver:self forKeyPath:@"bellcurve.isUpdated"];
	}
	_bellcurve = bellcurve;
	[self updateHIObject:oldValue newValue:bellcurve propertyName:@"bellcurve"];
}

-(void)setWindbarb:(HIWindbarb *)windbarb {
	HIWindbarb *oldValue = _windbarb;
	if(self.windbarb) {
		[self removeObserver:self forKeyPath:@"windbarb.isUpdated"];
	}
	_windbarb = windbarb;
	[self updateHIObject:oldValue newValue:windbarb propertyName:@"windbarb"];
}

-(void)setBoxplot:(HIBoxplot *)boxplot {
	HIBoxplot *oldValue = _boxplot;
	if(self.boxplot) {
		[self removeObserver:self forKeyPath:@"boxplot.isUpdated"];
	}
	_boxplot = boxplot;
	[self updateHIObject:oldValue newValue:boxplot propertyName:@"boxplot"];
}

-(void)setPie:(HIPie *)pie {
	HIPie *oldValue = _pie;
	if(self.pie) {
		[self removeObserver:self forKeyPath:@"pie.isUpdated"];
	}
	_pie = pie;
	[self updateHIObject:oldValue newValue:pie propertyName:@"pie"];
}

-(void)setPareto:(HIPareto *)pareto {
	HIPareto *oldValue = _pareto;
	if(self.pareto) {
		[self removeObserver:self forKeyPath:@"pareto.isUpdated"];
	}
	_pareto = pareto;
	[self updateHIObject:oldValue newValue:pareto propertyName:@"pareto"];
}

-(void)setLine:(HILine *)line {
	HILine *oldValue = _line;
	if(self.line) {
		[self removeObserver:self forKeyPath:@"line.isUpdated"];
	}
	_line = line;
	[self updateHIObject:oldValue newValue:line propertyName:@"line"];
}

-(void)setHistogram:(HIHistogram *)histogram {
	HIHistogram *oldValue = _histogram;
	if(self.histogram) {
		[self removeObserver:self forKeyPath:@"histogram.isUpdated"];
	}
	_histogram = histogram;
	[self updateHIObject:oldValue newValue:histogram propertyName:@"histogram"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	if(self.series) {
		[self removeObserver:self forKeyPath:@"series.isUpdated"];
	}
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

@end