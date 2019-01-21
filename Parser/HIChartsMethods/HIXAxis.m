- (void)addPlotBand:(HIPlotBands *)options {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addPlotBand", @"id" : self.uuid, @"params" : @[[options getParams]], @"axis" : @"x" };
}

- (void)addPlotLine:(HIPlotLines *)options {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addPlotLine", @"id" : self.uuid, @"params" : @[[options getParams]], @"axis" : @"x" };
}

- (void)addTitle:(NSNumber *)display {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addTitle", @"id" : self.uuid, @"params" : @[display], @"axis" : @"x" };
}

- (void)drawCrosshair {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"drawCrosshair", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)hideCrosshair {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"hideCrosshair", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)remove {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"remove0", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)remove:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"remove1", @"id" : self.uuid, @"params" : @[redraw], @"axis" : @"x" };
}

- (void)removePlotBand:(NSString *)id {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"removePlotBand", @"id" : self.uuid, @"params" : @[id], @"axis" : @"x" };
}

- (void)removePlotLine:(NSString *)id {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"removePlotLine", @"id" : self.uuid, @"params" : @[id], @"axis" : @"x" };
}

- (void)renderLine {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderLine", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)renderMinorTick:(NSNumber *)pos {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderMinorTick", @"id" : self.uuid, @"params" : @[pos], @"axis" : @"x" };
}

- (void)renderTick:(NSNumber *)pos index:(NSNumber *)i {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderTick", @"id" : self.uuid, @"params" : @[pos, i], @"axis" : @"x" };
}

- (void)setAxisCategories:(NSArray<NSString *> *)categories {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setCategories0", @"id" : self.uuid, @"params" : @[categories], @"axis" : @"x" };
}

- (void)setAxisCategories:(NSArray<NSString *> *)categories redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setCategories1", @"id" : self.uuid, @"params" : @[categories, redraw], @"axis" : @"x" };
}

- (void)setExtremes {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes0", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)setExtremes:(NSNumber *)newMin {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes1", @"id" : self.uuid, @"params" : @[newMin], @"axis" : @"x" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes2", @"id" : self.uuid, @"params" : @[newMin, newMax], @"axis" : @"x" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes3", @"id" : self.uuid, @"params" : @[newMin, newMax, redraw], @"axis" : @"x" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes4", @"id" : self.uuid, @"params" : @[newMin, newMax, redraw, [animation getParams]], @"axis" : @"x" };
}

- (void)setTickPositions {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTickPositions", @"id" : self.uuid, @"axis" : @"x" };
}

- (void)setAxisTitle:(HITitle *)title {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTitle0", @"id" : self.uuid, @"params" : @[[title getParams]], @"axis" : @"x" };
}

- (void)setAxisTitle:(HITitle *)title redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTitle1", @"id" : self.uuid, @"params" : @[[title getParams], redraw], @"axis" : @"x" };
}

- (void)update:(HIXAxis *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params], @"axis" : @"x" };
}

- (void)update:(HIXAxis *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw], @"axis" : @"x" };
}