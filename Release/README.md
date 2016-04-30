<p align="center" >
	<img src="http://www.highcharts.com/media/templates/highsoft_bootstrap/images/logo.svg" alt="Highcharts" title="Highcharts">
</p>

Highcharts iOS is a wrapper of HighchartsJS for iOS. And best is that you don't need to know JavaScript!

## System Requirementss

- iOS 8.0+
- Xcode 7.0+

## Documentation
There are some limitations that apply for wrapper if you want more power ower the charts you need to know JS and Higcharst API because Highcharts iOS is based on Highcharts JS therefore standard documentation apply.

- Read the ["General Docummentation"](http://www.highcharts.com/docs) if you want to know more.
- Read the ["API Docummentation"](http://api.highcharts.com/highcharts) if you need more customized charts.

## Installation
You can integrate `Highcharts.framework` into your project manually as a **Embedded Framework**.

- Select your project in the Project Navigator to show the target configuration window and select the target in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- Click `Add Other...`, and select `Highcharts.framework`.
- Select 'Create Groups' and click `finish`.

## Demo
There is `DemoCharts.xcodeproj` that contains few example charts.


## Your First Chart
```
// Import Higcharts framework header
#import <Highcharts/Highcharts.h>

// Init HighchartView with desired frame.
HighchartsView *highchartsView = [[HighchartsView alloc] initWithFrame:self.view.bounds];

// Load your chart.
highchartsView.options = @{

    @"chart": @{
        @"type": @"bar"
    },
    @"title": @{
        @"text": @"Fruit Consumption"
    },
    @"xAxis": @{
        @"categories": @[ @"Apples", @"Bananas", @"Oranges" ]
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Fruit eaten"
        }
    },
    @"series": @[
        @{
            @"name": @"Jane",
            @"data": @[ @1, @0, @4 ]
        },
        @{
            @"name": @"John",
            @"data": @[ @5, @7, @3 ]
        }
    ]
};

// Add Chart to view.
[self.view addSubview:self.highchartsView];

```
