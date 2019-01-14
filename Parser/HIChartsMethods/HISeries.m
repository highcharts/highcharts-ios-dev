- (void)addPoint:(HIData *)options {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"addPoint0", @"id" : self.uuid, @"params" : @[[options getParams]] };
}

- (void)addPoint:(HIData *)options redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"addPoint1", @"id" : self.uuid, @"params" : @[[options getParams], redraw] };
}

- (void)addPoint:(HIData *)options redraw:(NSNumber *)redraw shift:(NSNumber *)shift {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"addPoint2", @"id" : self.uuid, @"params" : @[[options getParams], redraw, shift] };
}

- (void)addPoint:(HIData *)options redraw:(NSNumber *)redraw shift:(NSNumber *)shift animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"addPoint3", @"id" : self.uuid, @"params" : @[[options getParams], redraw, shift, [animation getParams]] };
}

- (void)animate:(NSNumber *)init {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"animate", @"id" : self.uuid, @"params" : @[init] };
}

- (void)drawGraph {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"drawGraph", @"id" : self.uuid };
}

- (void)drawPoints {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"drawPoints", @"id" : self.uuid };
}

- (void)hide {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"hide", @"id" : self.uuid };
}

- (void)onMouseOver {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"onMouseOver", @"id" : self.uuid };
}

- (void)onMouseOut {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"onMouseOut", @"id" : self.uuid };
}

- (void)remove {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"remove0", @"id" : self.uuid };
}

- (void)remove:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"remove1", @"id" : self.uuid, @"params" : @[redraw] };
}

- (void)remove:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"remove2", @"id" : self.uuid, @"params" : @[redraw, [animation getParams]] };
}

- (void)remove:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation withEvent:(NSNumber *)withEvent {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"remove3", @"id" : self.uuid, @"params" : @[redraw, [animation getParams], withEvent] };
}

- (void)removePoint:(NSNumber *)i {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"removePoint0", @"id" : self.uuid, @"params" : @[i] };
}

- (void)removePoint:(NSNumber *)i redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"removePoint1", @"id" : self.uuid, @"params" : @[i, redraw] };
}

- (void)removePoint:(NSNumber *)i redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"removePoint2", @"id" : self.uuid, @"params" : @[i, redraw, [animation getParams]] };
}

- (void)render {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"render", @"id" : self.uuid };
}

- (void)select {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"select0", @"id" : self.uuid };
}

- (void)select:(NSNumber *)selected {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"select1", @"id" : self.uuid, @"params" : @[selected] };
}

- (void)setSeriesData:(NSArray *)data {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setData0", @"id" : self.uuid, @"params" : @[data] };
}

- (void)setSeriesData:(NSArray *)data redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setData1", @"id" : self.uuid, @"params" : @[data, redraw] };
}

- (void)setSeriesData:(NSArray *)data redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setData2", @"id" : self.uuid, @"params" : @[data, redraw, [animation getParams]] };
}

- (void)setSeriesData:(NSArray *)data redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation updatePoints:(NSNumber *)updatePoints {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setData3", @"id" : self.uuid, @"params" : @[data, redraw, [animation getParams], updatePoints] };
}

- (void)setOptions:(HISeries *)itemOptions {
    NSMutableDictionary *params = [[itemOptions getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setOptions", @"id" : self.uuid, @"params" : @[params] };
}

- (void)setState {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setState0", @"id" : self.uuid };
}

- (void)setState:(NSString *)state {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setState1", @"id" : self.uuid, @"params" : @[state] };
}

- (void)setSeriesVisible {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setVisible0", @"id" : self.uuid };
}

- (void)setSeriesVisible:(NSNumber *)visible {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setVisible1", @"id" : self.uuid, @"params" : @[visible] };
}

- (void)setSeriesVisible:(NSNumber *)visible redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"setVisible2", @"id" : self.uuid, @"params" : @[visible, redraw] };
}

- (void)show {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"show", @"id" : self.uuid };
}

- (void)sonify:(NSDictionary *)options {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"sonify", @"id" : self.uuid, @"params" : @[options] };
}

- (void)translate {
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"translate", @"id" : self.uuid };
}

- (void)update:(HISeries *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params] };
}

- (void)update:(HISeries *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Series", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw] };
}