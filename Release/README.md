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

// This is needed before any chart view is initialized. Yo need do it only once. Egz. When starting your app.
[HighchartsView preload];

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

### Non static data
If data you want to display is not static egz. from network or user input, of course you can do that.

```

// Make sure data you want to display is in proper format. See exaples or API documentation.
NSArray *data = ...

// Load your chart.
highchartsView.options = @{

    @"chart": @{
        @"type": @"line"
    },
    @"title": @{
        @"text": @"Non static chart"
    },
    @"series": data
    
};

```
## HTML #808080?
You can but dont need to use HTML colors. Simply initialize UIColor like you always do.

```

UIColor *myColor = [UIColor colorWithRed:0.502 green:0.502 blue:0.502 alpha:0.502];

...

@"yAxis" : @{
    @"title" : @{
        @"text" : @"Temperature (°C)"
    },
    @"plotLines" : @[@{
        @"value" : @0,
        @"width" : @1,
        @"color" : [myColor color]
    }]
}

...

```

## Local images
Some times you will ned to load image asset that you need to display on chart.

```
UIImage *myImage = [UIImage imageNamed:@"myImage.png"];

...

@"series" : @[@{
    @"name" : @"Tokyo",
    @"marker" : @{
        @"symbol" : @"square"
    },
    @"data" : @[@7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @{
        @"y" : @26.5,
        @"marker" : @{
            @"symbol" : [myImage image]
        }
    }, @23.3, @18.3, @13.9, @9.6]
}

...

```

