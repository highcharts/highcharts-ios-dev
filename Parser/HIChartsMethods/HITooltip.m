-(void)defaultFormatter:(HITooltip *)tooltip {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"defaultFormatter", @"id" : self.uuid, @"params" : @[[tooltip getParams]] };
}

-(void)destroy {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"destroy", @"id" : self.uuid };
}

-(void)getLabel {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"getLabel", @"id" : self.uuid };
}

-(void)hide {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"hide0", @"id" : self.uuid };
}

-(void)hide:(NSNumber *)delay {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"hide1", @"id" : self.uuid, @"params" : @[delay] };
}

-(void)refreshByPoint:(HIPoint *)point {
    NSDictionary *params = [point getParams];
    NSString *pointID = params[@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"refresh0", @"id" : self.uuid, @"pointID" : pointID };
}

-(void)refreshByPoints:(NSArray<HIPoint *> *)points {
    NSMutableArray *pointIDs = [[NSMutableArray alloc] init];
    for (HIPoint* point in points) {
        NSDictionary *params = [point getParams];
        NSString *pointID = params[@"_wrapperID"];
        [pointIDs addObject:[NSString stringWithFormat:@"%@%@%@", @"\"", pointID, @"\""]];
    }
    NSString *pointIDsString = [NSString stringWithFormat:@"%@%@%@", @"[", [pointIDs componentsJoinedByString:@", "], @"]"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"refresh1", @"id" : self.uuid, @"pointIDs" : pointIDsString };
}

-(void)update:(HITooltip *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"update", @"id" : self.uuid, @"params" : @[params] };
}