- (void)adjustLabelVisibility:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"adjustVisibility", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)adjustShapeVisibility:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"adjustVisibility", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

-(void)destroy {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroy", @"id" : self.uuid };
}

- (void)destroyLabelItem:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroyItem", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)destroyShapeItem:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroyItem", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)initLabel:(HILabels *)labelOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"initLabel", @"id" : self.uuid, @"params" : @[[labelOptions getParams]] };
}

- (void)initShape:(HIShapes *)shapeOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"initShape", @"id" : self.uuid, @"params" : @[[shapeOptions getParams]] };
}

- (void)redrawLabelItem:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem0", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)redrawLabelItem:(HILabels *)item animation:(NSNumber *)animation {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem1", @"id" : self.uuid, @"params" : @[[item getParams], animation] };
}

- (void)redrawShapeItem:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem0", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)redrawShapeItem:(HIShapes *)item animation:(NSNumber *)animation {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem1", @"id" : self.uuid, @"params" : @[[item getParams], animation] };
}

- (void)redrawLabelItems:(NSArray<HILabels *> *)items {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems0", @"id" : self.uuid, @"params" : @[array] };
}

- (void)redrawLabelItems:(NSArray<HILabels *> *)items animation:(NSNumber *)animation {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems1", @"id" : self.uuid, @"params" : @[array, animation] };
}

- (void)redrawShapeItems:(NSArray<HIShapes *> *)items {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems0", @"id" : self.uuid, @"params" : @[array] };
}

- (void)redrawShapeItems:(NSArray<HIShapes *> *)items animation:(NSNumber *)animation {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems1", @"id" : self.uuid, @"params" : @[array, animation] };
}


-(void)remove {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"remove", @"id" : self.uuid };
}

-(void)setOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setOptions", @"id" : self.uuid };
}

- (void)setVisibility {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible0", @"id" : self.uuid };
}

-(void)setVisibility:(NSNumber *)visible {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible1", @"id" : self.uuid, @"params" : @[visible] };
}