#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"streamgraph";
    chart.marginBottom = @30;
    chart.zoomType = @"x";
    
    HIColor *color1 = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    HIColor *color2 = [[HIColor alloc] initWithHexValue:@"0d233a"];
    HIColor *color3 = [[HIColor alloc] initWithHexValue:@"8bbc21"];
    HIColor *color4 = [[HIColor alloc] initWithHexValue:@"910000"];
    HIColor *color5 = [[HIColor alloc] initWithHexValue:@"1aadce"];
    
    HIColor *color6 = [[HIColor alloc] initWithRGBA:73 green:41 blue:112 alpha:.2];
    HIColor *color7 = [[HIColor alloc] initWithRGBA:73 green:41 blue:112 alpha:.1];
    
    HIColor *color8 = [[HIColor alloc] initWithHexValue:@"492970"];
    HIColor *color9 = [[HIColor alloc] initWithHexValue:@"f28f43"];
    HIColor *color10 = [[HIColor alloc] initWithHexValue:@"77a1e5"];
    HIColor *color11 = [[HIColor alloc] initWithHexValue:@"c42525"];
    HIColor *color12 = [[HIColor alloc] initWithHexValue:@"a6c96a"];
    HIColor *color13 = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    HIColor *color14 = [[HIColor alloc] initWithHexValue:@"0d233a"];
    HIColor *color15 = [[HIColor alloc] initWithHexValue:@"910000"];
    
    HIColor *color16 = [[HIColor alloc] initWithRGBA:139 green:188 blue:33 alpha:.1];
    HIColor *color17 = [[HIColor alloc] initWithRGBA:139 green:188 blue:33 alpha:.2];
    HIColor *color18 = [[HIColor alloc] initWithRGBA:139 green:188 blue:33 alpha:.3];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Winter Olympic Medal Wins";
    title.align = @"left";
    title.floating = [[NSNumber alloc] initWithBool:true];
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: <a href=\"https://www.sports-reference.com/olympics/winter/1924/\">sports-reference.com</a>";
    subtitle.align = @"left";
    subtitle.floating = [[NSNumber alloc] initWithBool:true];
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.maxPadding = @0;
    xaxis.type = @"category";
    xaxis.crosshair = [[HICrosshair alloc] init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"",
                        @"1924 Chamonix",
                        @"1928 St. Moritz",
                        @"1932 Lake Placid",
                        @"1936 Garmisch-Partenkirchen",
                        @"1940 <i>Cancelled (Sapporo)</i>",
                        @"1944 <i>Cancelled (Cortina d\'Ampezzo)</i>",
                        @"1948 St. Moritz",
                        @"1952 Oslo",
                        @"1956 Cortina d\'Ampezzo",
                        @"1960 Squaw Valley",
                        @"1964 Innsbruck",
                        @"1968 Grenoble",
                        @"1972 Sapporo",
                        @"1976 Innsbruck",
                        @"1980 Lake Placid",
                        @"1984 Sarajevo",
                        @"1988 Calgary",
                        @"1992 Albertville",
                        @"1994 Lillehammer",
                        @"1998 Nagano",
                        @"2002 Salt Lake City",
                        @"2006 Turin",
                        @"2010 Vancouver",
                        @"2014 Sochi", nil];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.align = @"left";
    xaxis.labels.reserveSpace = [[NSNumber alloc] initWithBool:false];
    xaxis.labels.rotation = @270;
    xaxis.lineWidth = @0;
    xaxis.tickWidth = @0;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.visible = [[NSNumber alloc] initWithBool:false];
    yaxis.startOnTick = [[NSNumber alloc] initWithBool:false];
    yaxis.endOnTick = [[NSNumber alloc] initWithBool:false];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIAnnotations *annotations = [[HIAnnotations alloc] init];
    
    HILabels *label1 = [[HILabels alloc] init];
    label1.point = [[HIPoint alloc] init];
    label1.point.x = @5.5;
    label1.point.xAxis = @0;
    label1.point.y = @30;
    label1.point.yAxis = @0;
    label1.text = @"Cancelled<br>during<br>World War II";
    
    HILabels *label2 = [[HILabels alloc] init];
    label2.point = [[HIPoint alloc] init];
    label2.point.x = @18;
    label2.point.xAxis = @0;
    label2.point.y = @90;
    label2.point.yAxis = @0;
    label2.text = @"Soviet Union fell,<br>Germany united";
   
    annotations.labels = [NSMutableArray arrayWithObjects:label1, label2, nil];
    
    annotations.labelOptions = [[HILabelOptions alloc] init];
    annotations.labelOptions.backgroundColor = [[HIColor alloc] initWithRGBA:255 green:255 blue:255 alpha:0.5];
    annotations.labelOptions.borderColor = [[HIColor alloc] initWithName:@"silver"];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.label = [[HILabel alloc] init];
    plotoptions.series.label.minFontSize = @5;
    plotoptions.series.label.maxFontSize = @15;
    plotoptions.series.label.style = [[HIStyle alloc] init];
    plotoptions.series.label.style.color = @"rgba(255,255,255,0.75)";
    
    HIExporting *exporting = [[HIExporting alloc] init];
    exporting.sourceWidth = @800;
    exporting.sourceHeight = @600;
    
    HIStreamgraph *streamgraph1 = [[HIStreamgraph alloc] init];
    streamgraph1.name = @"Finland";
    streamgraph1.data = @[
                          @0, @11, @4, @3, @6, @0, @0, @6, @9, @7, @8, @10, @5, @5, @7, @9, @13, @7, @7, @6, @12, @7, @9, @5, @5
                          ];
    
    HIStreamgraph *streamgraph2 = [[HIStreamgraph alloc] init];
    streamgraph2.name = @"Austria";
    streamgraph2.data = @[
                          @0, @3, @4, @2, @4, @0, @0, @8, @8, @11, @6, @12, @11, @5, @6, @7, @1, @10, @21, @9, @17, @17, @23, @16, @17
                          ];
    
    HIStreamgraph *streamgraph3 = [[HIStreamgraph alloc] init];
    streamgraph3.name = @"Sweden";
    streamgraph3.data = @[
                         @0, @2, @5, @3, @7, @0, @0, @10, @4, @10, @7, @7, @8, @4, @2, @4, @8, @6, @4, @3, @3, @7, @14, @11, @15
                         ];
    
    HIStreamgraph *streamgraph4 = [[HIStreamgraph alloc] init];
    streamgraph4.name = @"Norway";
    streamgraph4.data = @[
                          @0, @17, @15, @10, @15, @0, @0, @10, @16, @4, @6, @15, @14, @12, @7, @10, @9, @5, @20, @26, @25, @25, @19, @23, @26
                          ];
    
    HIStreamgraph *streamgraph5 = [[HIStreamgraph alloc] init];
    streamgraph5.name = @"U.S.";
    streamgraph5.data = @[
                          @0, @4, @6, @12, @4, @0, @0, @9, @11, @7, @10, @7, @7, @8, @10, @12, @8, @6, @11, @13, @13, @34, @25, @37, @28
                          ];
    
    HIStreamgraph *streamgraph6 = [[HIStreamgraph alloc] init];
    streamgraph6.name = @"East Germany";
    streamgraph6.data = @[
                          @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @5, @14, @19, @23, @24, @25, @0, @0, @0, @0, @0, @0, @0
                          ];
    
    HIStreamgraph *streamgraph7 = [[HIStreamgraph alloc] init];
    streamgraph7.name = @"West Germany";
    streamgraph7.data = @[
                          @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @7, @5, @10, @5, @4, @8, @0, @0, @0, @0, @0, @0, @0
                          ];
    
    HIStreamgraph *streamgraph8 = [[HIStreamgraph alloc] init];
    streamgraph8.name = @"Germany";
    streamgraph8.data = @[
                          @0, @0, @1, @2, @6, @0, @0, @0, @7, @2, @8, @9, @0, @0, @0, @0, @0, @0, @26, @24, @29, @36, @29, @30, @19
                          ];
    
    HIStreamgraph *streamgraph9 = [[HIStreamgraph alloc] init];
    streamgraph9.name = @"Netherlands";
    streamgraph9.data = @[
                         @0, @0, @0, @0, @0, @0, @0, @0, @3, @0, @2, @2, @9, @9, @6, @4, @0, @7, @4, @4, @11, @8, @9, @8, @24
                         ];
    
    HIStreamgraph *streamgraph10 = [[HIStreamgraph alloc] init];
    streamgraph10.name = @"Italy";
    streamgraph10.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @1, @2, @3, @1, @4, @4, @5, @4, @2, @2, @5, @14, @20, @10, @13, @11, @5, @8
                           ];
    
    HIStreamgraph *streamgraph11 = [[HIStreamgraph alloc] init];
    streamgraph11.name = @"Canada";
    streamgraph11.data = @[
                           @0, @1, @1, @7, @1, @0, @0, @3, @2, @3, @4, @3, @3, @1, @3, @2, @4, @5, @7, @13, @15, @17, @24, @26, @25
                           ];
    
    HIStreamgraph *streamgraph12 = [[HIStreamgraph alloc] init];
    streamgraph12.name = @"Switzerland";
    streamgraph12.data =  @[
                            @0, @3, @1, @1, @3, @0, @0, @10, @2, @6, @2, @0, @6, @10, @5, @5, @5, @15, @3, @9, @7, @11, @14, @9, @11
                            ];
    
    HIStreamgraph *streamgraph13 = [[HIStreamgraph alloc] init];
    streamgraph13.name = @"Great Britain";
    streamgraph13.data = @[
                           @0, @4, @1, @0, @3, @0, @0, @2, @1, @0, @0, @1, @0, @0, @1, @1, @1, @0, @0, @2, @1, @2, @1, @1, @4
                           ];
    
    HIStreamgraph *streamgraph14 = [[HIStreamgraph alloc] init];
    streamgraph14.name = @"France";
    streamgraph14.data = @[
                           @0, @3, @1, @1, @1, @0, @0, @5, @1, @0, @3, @7, @9, @3, @1, @1, @3, @2, @9, @5, @8, @11, @9, @11, @15
                           ];
    
    HIStreamgraph *streamgraph15 = [[HIStreamgraph alloc] init];
    streamgraph15.name = @"Hungary";
    streamgraph15.data = @[
                           @0, @0, @0, @1, @1, @0, @0, @1, @1, @1, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph16 = [[HIStreamgraph alloc] init];
    streamgraph16.name = @"Unified Team";
    streamgraph16.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @23, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph17 = [[HIStreamgraph alloc] init];
    streamgraph17.name = @"Soviet Union";
    streamgraph17.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @16, @21, @25, @13, @16, @27, @22, @25, @29, @0, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph18 = [[HIStreamgraph alloc] init];
    streamgraph18.name = @"Russia";
    streamgraph18.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @23, @18, @13, @22, @15, @33
                           ];
    
    HIStreamgraph *streamgraph19 = [[HIStreamgraph alloc] init];
    streamgraph19.name = @"Japan";
    streamgraph19.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @3, @0, @1, @1, @1, @7, @5, @10, @2, @1, @5, @8
                           ];
    
    HIStreamgraph *streamgraph20 = [[HIStreamgraph alloc] init];
    streamgraph20.name = @"Czechoslovakia";
    streamgraph20.data = @[
                           @0, @0, @1, @0, @0, @0, @0, @1, @0, @0, @1, @1, @4, @3, @1, @1, @6, @3, @3, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph21 = [[HIStreamgraph alloc] init];
    streamgraph21.name = @"Poland";
    streamgraph21.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @2, @0, @0, @1, @0, @0, @0, @0, @0, @0, @0, @2, @2, @6, @6
                           ];
    
    HIStreamgraph *streamgraph22 = [[HIStreamgraph alloc] init];
    streamgraph22.name = @"Spain";
    streamgraph22.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph23 = [[HIStreamgraph alloc] init];
    streamgraph23.name = @"China";
    streamgraph23.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @3, @3, @8, @8, @11, @11, @9
                           ];
    
    HIStreamgraph *streamgraph24 = [[HIStreamgraph alloc] init];
    streamgraph24.name = @"South Korea";
    streamgraph24.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @4, @6, @6, @4, @11, @14, @8
                           ];
    
    HIStreamgraph *streamgraph25 = [[HIStreamgraph alloc] init];
    streamgraph25.name = @"Czech Republi";
    streamgraph25.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @3, @3, @4, @6, @8
                           ];
    
    HIStreamgraph *streamgraph26 = [[HIStreamgraph alloc] init];
    streamgraph26.name = @"Belarus";
    streamgraph26.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @2, @2, @1, @1, @3, @6
                           ];
    
    HIStreamgraph *streamgraph27 = [[HIStreamgraph alloc] init];
    streamgraph27.name = @"Kazakhstan";
    streamgraph27.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @3, @2, @0, @0, @1, @1
                           ];
    
    HIStreamgraph *streamgraph28 = [[HIStreamgraph alloc] init];
    streamgraph28.name = @"Bulgaria";
    streamgraph28.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @1, @3, @1, @0, @0
                           ];
    
    HIStreamgraph *streamgraph29 = [[HIStreamgraph alloc] init];
    streamgraph29.name = @"Denmark";
    streamgraph29.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph30 = [[HIStreamgraph alloc] init];
    streamgraph30.name = @"Ukraine";
    streamgraph30.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @2, @1, @0, @2, @0, @2
                           ];
    
    HIStreamgraph *streamgraph31 = [[HIStreamgraph alloc] init];
    streamgraph31.name = @"Australia";
    streamgraph31.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @1, @2, @2, @3, @3
                           ];
    
    HIStreamgraph *streamgraph32 = [[HIStreamgraph alloc] init];
    streamgraph32.name = @"Belgium";
    streamgraph32.data = @[
                           @0, @1, @1, @0, @0, @0, @0, @2, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph33 = [[HIStreamgraph alloc] init];
    streamgraph33.name = @"Romania";
    streamgraph33.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph34 = [[HIStreamgraph alloc] init];
    streamgraph34.name = @"Liechtenstein";
    streamgraph34.data =  @[
                            @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @2, @4, @2, @1, @0, @0, @0, @0, @0, @0, @0
                            ];
    
    HIStreamgraph *streamgraph35 = [[HIStreamgraph alloc] init];
    streamgraph35.name = @"Yugoslavia";
    streamgraph35.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @3, @0, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph36 = [[HIStreamgraph alloc] init];
    streamgraph36.name = @"Luxembourg";
    streamgraph36.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @2, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph37 = [[HIStreamgraph alloc] init];
    streamgraph37.name = @"New Zealand";
    streamgraph37.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph38 = [[HIStreamgraph alloc] init];
    streamgraph38.name = @"North Korea";
    streamgraph38.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0, @0
                           ];
    
    HIStreamgraph *streamgraph39 = [[HIStreamgraph alloc] init];
    streamgraph39.name = @"Slovakia";
    streamgraph39.data = @[
                            @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @3, @1
                            ];
    
    HIStreamgraph *streamgraph40 = [[HIStreamgraph alloc] init];
    streamgraph40.name = @"Croatia";
    streamgraph40.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @4, @3, @3, @1
                           ];
    
    HIStreamgraph *streamgraph41 = [[HIStreamgraph alloc] init];
    streamgraph41.name = @"Slovenia";
    streamgraph41.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @3, @0, @1, @0, @3, @8
                           ];
    
    HIStreamgraph *streamgraph42 = [[HIStreamgraph alloc] init];
    streamgraph42.name = @"Latvia";
    streamgraph42.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @2, @4
                           ];
    
    HIStreamgraph *streamgraph43 = [[HIStreamgraph alloc] init];
    streamgraph43.name = @"Estonia";
    streamgraph43.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @3, @3, @1, @0
                           ];
    
    HIStreamgraph *streamgraph44 = [[HIStreamgraph alloc] init];
    streamgraph44.name = @"Uzbekistan";
    streamgraph44.data = @[
                           @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @1, @0, @0, @0, @0, @0
                           ];
    
    
    
    options.chart = chart;
    options.colors = [NSMutableArray arrayWithObjects:color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11, color12, color13, color14, color15, color16, color17, color18, nil];
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.legend = legend;
    options.annotations = [NSMutableArray arrayWithObject:annotations];
    options.plotOptions = plotoptions;
    options.exporting = exporting;
    options.series = [NSMutableArray arrayWithObjects:streamgraph1, streamgraph2, streamgraph3, streamgraph4, streamgraph5, streamgraph6, streamgraph7, streamgraph8, streamgraph9, streamgraph10, streamgraph11, streamgraph12, streamgraph13, streamgraph14, streamgraph15, streamgraph16, streamgraph17, streamgraph18, streamgraph19, streamgraph20, streamgraph21, streamgraph22, streamgraph23, streamgraph24, streamgraph25, streamgraph26, streamgraph27, streamgraph28, streamgraph29, streamgraph30, streamgraph31, streamgraph32, streamgraph33, streamgraph34, streamgraph35, streamgraph36, streamgraph37, streamgraph38, streamgraph39, streamgraph40, streamgraph41, streamgraph42, streamgraph43, streamgraph44, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
