#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"tilemap";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    chart.height = @"80%";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"U.S. states by population in 2016";
    
    HISubtitle *subtitle = [[HISubtitle alloc] init];
    subtitle.text = @"Source:<a href=\"https://simple.wikipedia.org/wiki/List_of_U.S._states_by_population\">Wikipedia</a>";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.visible = [[NSNumber alloc] initWithBool:false];
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.visible = [[NSNumber alloc] initWithBool:false];
    
    HIColorAxis *coloraxis = [[HIColorAxis alloc] init];
    
    HIDataClasses *dataclasses1 = [[HIDataClasses alloc] init];
    dataclasses1.from = @0;
    dataclasses1.to = @1000000;
    dataclasses1.color = [[HIColor alloc] initWithHexValue:@"#F9EDB3"];
    dataclasses1.name = @"< 1M";
    
    HIDataClasses *dataclasses2 = [[HIDataClasses alloc] init];
    dataclasses2.from = @1000000;
    dataclasses2.to = @5000000;
    dataclasses2.color = [[HIColor alloc] initWithHexValue:@"#FFC428"];
    dataclasses2.name = @"1M - 5M";
    
    HIDataClasses *dataclasses3 = [[HIDataClasses alloc] init];
    dataclasses3.from = @5000000;
    dataclasses3.to = @20000000;
    dataclasses3.color = [[HIColor alloc] initWithHexValue:@"#FF7987"];
    dataclasses3.name = @"5M - 20M";
    
    HIDataClasses *dataclasses4 = [[HIDataClasses alloc] init];
    dataclasses4.from = @20000000;
    dataclasses4.color = [[HIColor alloc] initWithHexValue:@"#FF2371"];
    dataclasses4.name = @"> 20M";
    
    coloraxis.dataClasses = [NSMutableArray arrayWithObjects:dataclasses1, dataclasses2, dataclasses3, dataclasses4, nil];
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.headerFormat = @"";
    tooltip.pointFormat = @"The population of <b> {point.name}</b> is <b>{point.value}</b>";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc] init];
    plotOptions.series = [[HISeries alloc] init];
    plotOptions.series.dataLabels = [[HIDataLabels alloc] init];
    plotOptions.series.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotOptions.series.dataLabels.format = @"{point.hc-a2}";
    plotOptions.series.dataLabels.color = [[HIColor alloc] initWithHexValue:@"000000"];
    plotOptions.series.dataLabels.style = [[HIStyle alloc] init];
    plotOptions.series.dataLabels.style.textOutline = @"false";
    
    HITilemap *tilemap = [[HITilemap alloc] init];
    tilemap.name = @"";
    tilemap.data = [self data];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.colorAxis = coloraxis;
    options.tooltip = tooltip;
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:tilemap, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

- (NSArray*)data {
        return @[
                 @{
                     @"hc-a2": @"AL",
                     @"name": @"Alabama",
                     @"region": @"South",
                     @"x": @6,
                     @"y": @7,
                     @"value": @4849377
                     }, @{
                     @"hc-a2": @"AK",
                     @"name": @"Alaska",
                     @"region": @"West",
                     @"x": @0,
                     @"y": @0,
                     @"value": @737732
                     }, @{
                     @"hc-a2": @"AZ",
                     @"name": @"Arizona",
                     @"region": @"West",
                     @"x": @5,
                     @"y": @3,
                     @"value": @6745408
                     }, @{
                     @"hc-a2": @"AR",
                     @"name": @"Arkansas",
                     @"region": @"South",
                     @"x": @5,
                     @"y": @6,
                     @"value": @2994079
                     }, @{
                     @"hc-a2": @"CA",
                     @"name": @"California",
                     @"region": @"West",
                     @"x": @5,
                     @"y": @2,
                     @"value": @39250017
                     }, @{
                     @"hc-a2": @"CO",
                     @"name": @"Colorado",
                     @"region": @"West",
                     @"x": @4,
                     @"y": @3,
                     @"value": @5540545
                     }, @{
                     @"hc-a2": @"CT",
                     @"name": @"Connecticut",
                     @"region": @"Northeast",
                     @"x": @3,
                     @"y": @11,
                     @"value": @3596677
                     }, @{
                     @"hc-a2": @"DE",
                     @"name": @"Delaware",
                     @"region": @"South",
                     @"x": @4,
                     @"y": @9,
                     @"value": @935614
                     }, @{
                     @"hc-a2": @"DC",
                     @"name": @"District of Columbia",
                     @"region": @"South",
                     @"x": @4,
                     @"y": @10,
                     @"value": @7288000
                     }, @{
                     @"hc-a2": @"FL",
                     @"name": @"Florida",
                     @"region": @"South",
                     @"x": @8,
                     @"y": @8,
                     @"value": @20612439
                     }, @{
                     @"hc-a2": @"GA",
                     @"name": @"Georgia",
                     @"region": @"South",
                     @"x": @7,
                     @"y": @8,
                     @"value": @10310371
                     }, @{
                     @"hc-a2": @"HI",
                     @"name": @"Hawaii",
                     @"region": @"West",
                     @"x": @8,
                     @"y": @0,
                     @"value": @1419561
                     }, @{
                     @"hc-a2": @"ID",
                     @"name": @"Idaho",
                     @"region": @"West",
                     @"x": @3,
                     @"y": @2,
                     @"value": @1634464
                     }, @{
                     @"hc-a2": @"IL",
                     @"name": @"Illinois",
                     @"region": @"Midwest",
                     @"x": @3,
                     @"y": @6,
                     @"value": @12801539
                     }, @{
                     @"hc-a2": @"IN",
                     @"name": @"Indiana",
                     @"region": @"Midwest",
                     @"x": @3,
                     @"y": @7,
                     @"value": @6596855
                     }, @{
                     @"hc-a2": @"IA",
                     @"name": @"Iowa",
                     @"region": @"Midwest",
                     @"x": @3,
                     @"y": @5,
                     @"value": @3107126
                     }, @{
                     @"hc-a2": @"KS",
                     @"name": @"Kansas",
                     @"region": @"Midwest",
                     @"x": @5,
                     @"y": @5,
                     @"value": @2904021
                     }, @{
                     @"hc-a2": @"KY",
                     @"name": @"Kentucky",
                     @"region": @"South",
                     @"x": @4,
                     @"y": @6,
                     @"value": @4413457
                     }, @{
                     @"hc-a2": @"LA",
                     @"name": @"Louisiana",
                     @"region": @"South",
                     @"x": @6,
                     @"y": @5,
                     @"value": @4649676
                     }, @{
                     @"hc-a2": @"ME",
                     @"name": @"Maine",
                     @"region": @"Northeast",
                     @"x": @0,
                     @"y": @11,
                     @"value": @1330089
                     }, @{
                     @"hc-a2": @"MD",
                     @"name": @"Maryland",
                     @"region": @"South",
                     @"x": @4,
                     @"y": @8,
                     @"value": @6016447
                     }, @{
                     @"hc-a2": @"MA",
                     @"name": @"Massachusetts",
                     @"region": @"Northeast",
                     @"x": @2,
                     @"y": @10,
                     @"value": @6811779
                     }, @{
                     @"hc-a2": @"MI",
                     @"name": @"Michigan",
                     @"region": @"Midwest",
                     @"x": @2,
                     @"y": @7,
                     @"value": @9928301
                     }, @{
                     @"hc-a2": @"MN",
                     @"name": @"Minnesota",
                     @"region": @"Midwest",
                     @"x": @2,
                     @"y": @4,
                     @"value": @5519952
                     }, @{
                     @"hc-a2": @"MS",
                     @"name": @"Mississippi",
                     @"region": @"South",
                     @"x": @6,
                     @"y": @6,
                     @"value": @2984926
                     }, @{
                     @"hc-a2": @"MO",
                     @"name": @"Missouri",
                     @"region": @"Midwest",
                     @"x": @4,
                     @"y": @5,
                     @"value": @6093000
                     }, @{
                     @"hc-a2": @"MT",
                     @"name": @"Montana",
                     @"region": @"West",
                     @"x": @2,
                     @"y": @2,
                     @"value": @1023579
                     }, @{
                     @"hc-a2": @"NE",
                     @"name": @"Nebraska",
                     @"region": @"Midwest",
                     @"x": @4,
                     @"y": @4,
                     @"value": @1881503
                     }, @{
                     @"hc-a2": @"NV",
                     @"name": @"Nevada",
                     @"region": @"West",
                     @"x": @4,
                     @"y": @2,
                     @"value": @2839099
                     }, @{
                     @"hc-a2": @"NH",
                     @"name": @"New Hampshire",
                     @"region": @"Northeast",
                     @"x": @1,
                     @"y": @11,
                     @"value": @1326813
                     }, @{
                     @"hc-a2": @"NJ",
                     @"name": @"New Jersey",
                     @"region": @"Northeast",
                     @"x": @3,
                     @"y": @10,
                     @"value": @8944469
                     }, @{
                     @"hc-a2": @"NM",
                     @"name": @"New Mexico",
                     @"region": @"West",
                     @"x": @6,
                     @"y": @3,
                     @"value": @2085572
                     }, @{
                     @"hc-a2": @"NY",
                     @"name": @"New York",
                     @"region": @"Northeast",
                     @"x": @2,
                     @"y": @9,
                     @"value": @19745289
                     }, @{
                     @"hc-a2": @"NC",
                     @"name": @"North Carolina",
                     @"region": @"South",
                     @"x": @5,
                     @"y": @9,
                     @"value": @10146788
                     }, @{
                     @"hc-a2": @"ND",
                     @"name": @"North Dakota",
                     @"region": @"Midwest",
                     @"x": @2,
                     @"y": @3,
                     @"value": @739482
                     }, @{
                     @"hc-a2": @"OH",
                     @"name": @"Ohio",
                     @"region": @"Midwest",
                     @"x": @3,
                     @"y": @8,
                     @"value": @11614373
                     }, @{
                     @"hc-a2": @"OK",
                     @"name": @"Oklahoma",
                     @"region": @"South",
                     @"x": @6,
                     @"y": @4,
                     @"value": @3878051
                     }, @{
                     @"hc-a2": @"OR",
                     @"name": @"Oregon",
                     @"region": @"West",
                     @"x": @4,
                     @"y": @1,
                     @"value": @3970239
                     }, @{
                     @"hc-a2": @"PA",
                     @"name": @"Pennsylvania",
                     @"region": @"Northeast",
                     @"x": @3,
                     @"y": @9,
                     @"value": @12784227
                     }, @{
                     @"hc-a2": @"RI",
                     @"name": @"Rhode Island",
                     @"region": @"Northeast",
                     @"x": @2,
                     @"y": @11,
                     @"value": @1055173
                     }, @{
                     @"hc-a2": @"SC",
                     @"name": @"South Carolina",
                     @"region": @"South",
                     @"x": @6,
                     @"y": @8,
                     @"value": @4832482
                     }, @{
                     @"hc-a2": @"SD",
                     @"name": @"South Dakota",
                     @"region": @"Midwest",
                     @"x": @3,
                     @"y": @4,
                     @"value": @853175
                     }, @{
                     @"hc-a2": @"TN",
                     @"name": @"Tennessee",
                     @"region": @"South",
                     @"x": @5,
                     @"y": @7,
                     @"value": @6651194
                     }, @{
                     @"hc-a2": @"TX",
                     @"name": @"Texas",
                     @"region": @"South",
                     @"x": @7,
                     @"y": @4,
                     @"value": @27862596
                     }, @{
                     @"hc-a2": @"UT",
                     @"name": @"Utah",
                     @"region": @"West",
                     @"x": @5,
                     @"y": @4,
                     @"value": @2942902
                     }, @{
                     @"hc-a2": @"VT",
                     @"name": @"Vermont",
                     @"region": @"Northeast",
                     @"x": @1,
                     @"y": @10,
                     @"value": @626011
                     }, @{
                     @"hc-a2": @"VA",
                     @"name": @"Virginia",
                     @"region": @"South",
                     @"x": @5,
                     @"y": @8,
                     @"value": @8411808
                     }, @{
                     @"hc-a2": @"WA",
                     @"name": @"Washington",
                     @"region": @"West",
                     @"x": @2,
                     @"y": @1,
                     @"value": @7288000
                     }, @{
                     @"hc-a2": @"WV",
                     @"name": @"West Virginia",
                     @"region": @"South",
                     @"x": @4,
                     @"y": @7,
                     @"value": @1850326
                     }, @{
                     @"hc-a2": @"WI",
                     @"name": @"Wisconsin",
                     @"region": @"Midwest",
                     @"x": @2,
                     @"y": @5,
                     @"value": @5778708
                     }, @{
                     @"hc-a2": @"WY",
                     @"name": @"Wyoming",
                     @"region": @"West",
                     @"x": @3,
                     @"y": @3,
                     @"value": @584153
                     }
                 ];
}

@end
