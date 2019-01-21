- (void)cancelSonify {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"cancelSonify0", @"id" : self.uuid };
}

- (void)cancelSonify:(NSNumber *)fadeOut {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"cancelSonify1", @"id" : self.uuid, @"params" : @[fadeOut] };
}

- (void)onMouseOut {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"onMouseOut", @"id" : self.uuid };
}

- (void)remove:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"remove0", @"id" : self.uuid, @"params" : @[redraw] };
}

- (void)remove:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"remove1", @"id" : self.uuid, @"params" : @[redraw, [animation getParams]] };
}

- (void)select {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select0", @"id" : self.uuid };
}

- (void)select:(NSNumber *)selected {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select1", @"id" : self.uuid, @"params" : @[selected] };
}

- (void)select:(NSNumber *)selected accumulate:(NSNumber *)accumulate {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"select2", @"id" : self.uuid, @"params" : @[selected, accumulate] };
}

- (void)setNestedProperty:(id)object value:(id)value key:(NSString *)key {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setNestedProperty", @"id" : self.uuid, @"params" : @[object, value, key] };
}

- (void)setState {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState0", @"id" : self.uuid };
}

- (void)setState:(NSString *)state {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState1", @"id" : self.uuid, @"params" : @[state] };
}

- (void)setState:(NSString *)state move:(NSNumber *)move {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"setState2", @"id" : self.uuid, @"params" : @[state, move] };
}

- (void)sonify:(NSDictionary *)options {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"sonify", @"id" : self.uuid, @"params" : @[options] };
}

- (void)tooltipFormatter:(NSString *)pointFormat {
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"tooltipFormatter", @"id" : self.uuid, @"params" : @[pointFormat] };
}

- (void)update:(HIPoint *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params] };
}

- (void)update:(HIPoint *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw] };
}

- (void)update:(HIPoint *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Point", @"method" : @"update2", @"id" : self.uuid, @"params" : @[params, redraw, [animation getParams]] };
}