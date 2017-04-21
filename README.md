# HOWTO

Here we present how to create basic chart and place it in your project


## What we need to do

  - Prepare your project for Highcharts
  - Create chart view and place it in your view
  - Create chart options and add them to your chart view
  - Run your app and enjoy!


## Preparing your project

- First of all download Highcharts framework from here: [Highcharts](http://highcharts.com)
- Now add Highcharts to your project by simply copying it to your project to folder **Frameworks** (create it if necessary) and remeber to check "**Copy items if needed**" option:

![alt text](http://i67.tinypic.com/x6iey8.png "Files")
![alt text](http://i68.tinypic.com/24gjcbr.png "Copy")

- Then go to your project settings and add Highcharts to **Embedded Binaries**

![alt text](http://i63.tinypic.com/11kb1gy.png "Embedded")

You are now set to use Highcharts!

## Using Highcharts (demo app)

##### Set AppDelegate

In your **AppDelegate.m** import Highcharts at the top:

```
#import <Highcharts/Highcharts.h>
```
Add this line to your **application:didFinishLaunchingWithOptions**:

```
[HIGChartView preload];
```
#### Add HIGChartView to your View Controller
In your View Controller .m file add:
```
#import <Highcharts/Highcharts.h>
```
Then change:
```
@interface ViewController ()
@end
```
To:
```
@interface ViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end
```
#### Creating chart
Let's start with creating simple chart!

For the purpose of this tutorial we will create a simple column chart using random data.

In **viewDidLoad** add following lines:
```
self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 20, self.view.bounds.size.width, 300.0f)];
```
This will create our chartView with defined origin and size.

Done!
Now let's create a chart:
The heart of a chart is **HIOptions** class which contains all the information needed to present it. Some of the options there are optional, some are not (see Demo app provided by Highcharts). 

Create instance of **HIOptions** class:
```
HIOptions *options = [[HIOptions alloc]init];
```
Now we need to add the options that our chart requires to be presented. Let's start with **chart type**. To do so, create HIChart class object and set its type to "column":
```
HIChart *chart = [[HIChart alloc]init];
chart.type = @"column";
```
Add this object to your **options**:
```
options.chart = chart;
```
Then let's give our chart a name (title) and also add it to **options**:
```
HITitle *title = [[HITitle alloc]init];
title.text = @"Demo chart";

options.title = title;
```
Now we need to add some data (in this tutorial it will be some random set of numbers). Since we are creating **column** chart, we need to use **HIColumn** data series:
```
HIColumn *series = [[HIColumn alloc]init];
```
To add data, just create array of our data objects:
```
series.data = [NSMutableArray arrayWithObjects: @49.9, @71.5, @106.4, @129.2, @144, @176, @135.6, @148.5, @216.4, @194.1, @95.6, @54.4, nil];
```
Since options can store multiple series, we need to add our series as one-element-array:
```
options.series = [NSMutableArray arrayWithObject:series];
```
And at last add our **options** to the chartView:
```
self.chartView.options = options;
```

Don't forget to add chartView as subview to your View Controller's view! At the end add:
```
[self.view addSubview:self.chartView];
```
That's it! We are now set to run our application!
Your View Controller .m file should look like this:
```
#import "ViewController.h"
#import <Highcharts/Highcharts.h>

@interface ViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 20, self.view.bounds.size.width, 300.0f)];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    options.chart = chart;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Demo chart";
    options.title = title;
    
    HIColumn *series = [[HIColumn alloc]init];
    series.data = [NSMutableArray arrayWithObjects: @49.9, @71.5, @106.4, @129.2, @144, @176, @135.6, @148.5, @216.4, @194.1, @95.6, @54.4, nil];
    options.series = [NSMutableArray arrayWithObject:series];
    self.chartView.options = options;
    
    [self.view addSubview:self.chartView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
```

## ***Press "Run" in XCode.***
#### For more complex solutions see demo app HIFit provided by Highcharts or read documentation!