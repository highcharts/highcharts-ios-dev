- (void)setPointText:(HIPoint *)item {
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"setText", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)setSeriesText:(HISeries *)item {
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"setText", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)update:(HILegend *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params] };
}

- (void)update:(HILegend *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw] };
}