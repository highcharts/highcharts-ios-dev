#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

HIChartView *chartView;
NSString *currentButtonClicked;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    chartView = [[HIChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height - 50)];
    
    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts responsive chart";
    
    HISubtitle *subtitle = [[HISubtitle alloc] init];
    subtitle.text = @"Resize the frame or click buttons to change appearance";
    
    HILegend *legend = [[HILegend alloc] init];
    legend.align = @"right";
    legend.verticalAlign = @"middle";
    legend.layout = @"vertical";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Bananas", nil];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.x = @-10;
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.allowDecimals = @false;
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Amount";
    
    HIColumn *column1 =[[HIColumn alloc] init];
    column1.name = @"Christmas Eve";
    column1.data = [NSMutableArray arrayWithObjects:@1,
                    @4,
                    @3, nil];
    
    HIColumn *column2 =[[HIColumn alloc] init];
    column2.name = @"Christmas Day before dinner";
    column2.data = [NSMutableArray arrayWithObjects:@6,
                    @4,
                    @2, nil];
    
    HIColumn *column3 =[[HIColumn alloc] init];
    column3.name = @"Christmas Day after dinner";
    column3.data = [NSMutableArray arrayWithObjects:@8,
                    @4,
                    @3, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.legend = legend;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
    
    [self addButton:@"Large" atXPosition:50];
    [self addButton:@"Small" atXPosition:150];
}

- (void)addButton:(NSString*)name atXPosition:(CGFloat)x{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:name forState:UIControlStateNormal];
    button.frame = CGRectMake(x, self.view.bounds.size.height - 40, 50, 30);
    [self.view addSubview:button];
}

- (void)buttonPressed:(UIButton*)sender{
    NSString* buttonTitle = sender.currentTitle;
    if ([buttonTitle isEqualToString:currentButtonClicked]) {
        return;
    }
    
    HIOptions *newOptions = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts responsive chart";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    
    HICredits *credits = [[HICredits alloc] init];
    
    HILegend *legend = [[HILegend alloc] init];
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Bananas", nil];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.x = @-10;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    
    HIColumn *column1 =[[HIColumn alloc] init];
    column1.name = @"Christmas Eve";
    column1.data = [NSMutableArray arrayWithObjects:@1,
                    @4,
                    @3, nil];
    
    HIColumn *column2 =[[HIColumn alloc] init];
    column2.name = @"Christmas Day before dinner";
    column2.data = [NSMutableArray arrayWithObjects:@6,
                    @4,
                    @2, nil];
    
    HIColumn *column3 =[[HIColumn alloc] init];
    column3.name = @"Christmas Day after dinner";
    column3.data = [NSMutableArray arrayWithObjects:@8,
                    @4,
                    @3, nil];
    
    if([buttonTitle isEqualToString:@"Large"]) {
        currentButtonClicked = buttonTitle;
        
        chart.width = @400;
        
        subtitle.text = @"Resize the frame or click buttons to change appearance";
        
        legend.align = @"right";
        legend.verticalAlign = @"middle";
        legend.layout = @"vertical";
        
        yaxis.allowDecimals = @false;
        yaxis.title = [[HITitle alloc] init];
        yaxis.title.text = @"Amount";
        
    }
    else if ([buttonTitle isEqualToString:@"Small"]) {
        currentButtonClicked = buttonTitle;
        
        chart.width = @400;
        chart.height = @300;
        
        subtitle.text = @"";
        
        credits.enabled = @false;
        
        legend.align = @"center";
        legend.verticalAlign = @"bottom";
        legend.layout = @"horizontal";
        
        yaxis.title = [[HITitle alloc] init];
        yaxis.title.text = @"";
        yaxis.labels = [[HILabels alloc] init];
        yaxis.labels.align = @"left";
        yaxis.labels.x = @0;
        yaxis.labels.y = @-5;
    }
    
    newOptions.chart = chart;
    newOptions.title = title;
    newOptions.subtitle = subtitle;
    newOptions.credits = credits;
    newOptions.legend = legend;
    newOptions.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    newOptions.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    newOptions.series = [NSMutableArray arrayWithObjects:column1, column2, column3, nil];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        chartView.options = newOptions;
    });
}

@end
