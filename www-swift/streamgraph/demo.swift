import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["streamgraph", "series-label", "annotations"]
    
    let options = HIOptions()

    let chart = HIChart()
    chart.type = "streamgraph"
    chart.marginBottom = 30
    chart.zoomType = "x"
    options.chart = chart

    options.colors = ["#2f7ed8", "#0d233a", "#8bbc21", "#910000", "#1aadce", "rgba(73, 41, 112, 0.2)", "rgba(73, 41, 112, 0.1)", "#492970", "#f28f43", "#77a1e5", "#c42525", "#a6c96a", "#2f7ed8", "#0d233a", "#910000", "rgba(139, 188, 33, 0.1)", "rgba(139, 188, 33, 0.2)", "rgba(139, 188, 33, 0.3)"]

    let title = HITitle()
    title.text = "Winter Olympic Medal Wins"
    title.floating = true
    title.align = "left"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.floating = true
    subtitle.align = "left"
    subtitle.y = 30
    subtitle.text = "Source: <a href=\"https://www.sports-reference.com/olympics/winter/1924/\">sports-reference.com</a>"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.maxPadding = 0
    xAxis.type = "category"
    xAxis.categories = [ "", "1924 Chamonix", "1928 St. Moritz", "1932 Lake Placid", "1936 Garmisch-Partenkirchen", "1940 <i>Cancelled (Sapporo)</i>", "1944 <i>Cancelled (Cortina d\"Ampezzo)</i>", "1948 St. Moritz", "1952 Oslo", "1956 Cortina d\"Ampezzo", "1960 Squaw Valley", "1964 Innsbruck", "1968 Grenoble", "1972 Sapporo", "1976 Innsbruck", "1980 Lake Placid", "1984 Sarajevo", "1988 Calgary", "1992 Albertville", "1994 Lillehammer", "1998 Nagano", "2002 Salt Lake City", "2006 Turin", "2010 Vancouver", "2014 Sochi" ]
    //    xAxis.crosshair = true
    xAxis.labels = HILabels()
    xAxis.labels.align = "left"
    xAxis.labels.reserveSpace = false
    xAxis.labels.rotation = 270
    xAxis.lineWidth = 0
    xAxis.margin = 20
    xAxis.tickWidth = 0
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.visible = false
    yAxis.startOnTick = false
    yAxis.endOnTick = false
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let annotations = HIAnnotations()

    let label1 = HILabels()
    label1.point = HIPoint()
    label1.point.x = 5.5
    label1.point.xAxis = 0
    label1.point.y = 30
    label1.point.yAxis = 0
    label1.text = "Cancelled<br>during<br>World War II"

    let label2 = HILabels()
    label2.point = HIPoint()
    label2.point.x = 18
    label2.point.xAxis = 0
    label2.point.y = 90
    label2.point.yAxis = 0
    label2.text = "Soviet Union fell,<br>Germany united"

    annotations.labels = [label1, label2]
    annotations.labelOptions = HILabelOptions()
    annotations.labelOptions.backgroundColor = HIColor(name: "rgba(255,255,255,0.5)")
    annotations.labelOptions.borderColor = HIColor(name: "silver")
    options.annotations = [annotations]

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.label = HILabel()
    plotOptions.series.label.minFontSize = 5
    plotOptions.series.label.maxFontSize = 15
    plotOptions.series.label.style = HICSSObject()
    plotOptions.series.label.style.color = "rgba(255,255,255,0.75)"
    options.plotOptions = plotOptions

    let finland = HIStreamgraph()
    finland.name = "Finland"
    finland.data = [
        0, 11, 4, 3, 6, 0, 0, 6, 9, 7, 8, 10, 5, 5, 7, 9, 13, 7, 7, 6, 12, 7, 9, 5, 5
    ]

    let austria = HIStreamgraph()
    austria.name = "Austria"
    austria.data = [
        0, 3, 4, 2, 4, 0, 0, 8, 8, 11, 6, 12, 11, 5, 6, 7, 1, 10, 21, 9, 17, 17, 23, 16, 17
    ]

    let sweden = HIStreamgraph()
    sweden.name = "Sweden"
    sweden.data = [
        0, 2, 5, 3, 7, 0, 0, 10, 4, 10, 7, 7, 8, 4, 2, 4, 8, 6, 4, 3, 3, 7, 14, 11, 15
    ]

    let norway = HIStreamgraph()
    norway.name = "Norway"
    norway.data = [
        0, 17, 15, 10, 15, 0, 0, 10, 16, 4, 6, 15, 14, 12, 7, 10, 9, 5, 20, 26, 25, 25, 19, 23, 26
    ]

    let us = HIStreamgraph()
    us.name = "U.S."
    us.data = [
        0, 4, 6, 12, 4, 0, 0, 9, 11, 7, 10, 7, 7, 8, 10, 12, 8, 6, 11, 13, 13, 34, 25, 37, 28
    ]

    let eastGermany = HIStreamgraph()
    eastGermany.name = "East Germany"
    eastGermany.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 14, 19, 23, 24, 25, 0, 0, 0, 0, 0, 0, 0
    ]

    let westGermany = HIStreamgraph()
    westGermany.name = "West Germany"
    westGermany.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 10, 5, 4, 8, 0, 0, 0, 0, 0, 0, 0
    ]

    let germany = HIStreamgraph()
    germany.name = "Germany"
    germany.data = [
        0, 0, 1, 2, 6, 0, 0, 0, 7, 2, 8, 9, 0, 0, 0, 0, 0, 0, 26, 24, 29, 36, 29, 30, 19
    ]

    let netherlands = HIStreamgraph()
    netherlands.name = "Netherlands"
    netherlands.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 2, 9, 9, 6, 4, 0, 7, 4, 4, 11, 8, 9, 8, 24
    ]

    let italy = HIStreamgraph()
    italy.name = "Italy"
    italy.data = [
        0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 1, 4, 4, 5, 4, 2, 2, 5, 14, 20, 10, 13, 11, 5, 8
    ]

    let canada = HIStreamgraph()
    canada.name = "Canada"
    canada.data = [
        0, 1, 1, 7, 1, 0, 0, 3, 2, 3, 4, 3, 3, 1, 3, 2, 4, 5, 7, 13, 15, 17, 24, 26, 25
    ]

    let switzerland = HIStreamgraph()
    switzerland.name = "Switzerland"
    switzerland.data = [
        0, 3, 1, 1, 3, 0, 0, 10, 2, 6, 2, 0, 6, 10, 5, 5, 5, 15, 3, 9, 7, 11, 14, 9, 11
    ]

    let greatBritain = HIStreamgraph()
    greatBritain.name = "Great Britain"
    greatBritain.data = [
        0, 3, 1, 1, 3, 0, 0, 10, 2, 6, 2, 0, 6, 10, 5, 5, 5, 15, 3, 9, 7, 11, 14, 9, 11
    ]

    let france = HIStreamgraph()
    france.name = "France"
    france.data = [
        0, 3, 1, 1, 1, 0, 0, 5, 1, 0, 3, 7, 9, 3, 1, 1, 3, 2, 9, 5, 8, 11, 9, 11, 15
    ]

    let hungary = HIStreamgraph()
    hungary.name = "Hungary"
    hungary.data = [
        0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]

    let unifiedTeam = HIStreamgraph()
    unifiedTeam.name = "Unified Team"
    unifiedTeam.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0
    ]

    let sovietUnion = HIStreamgraph()
    sovietUnion.name = "Soviet Union"
    sovietUnion.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 21, 25, 13, 16, 27, 22, 25, 29, 0, 0, 0, 0, 0, 0, 0
    ]

    let russia = HIStreamgraph()
    russia.name = "Russia"
    russia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 18, 13, 22, 15, 33
    ]

    let japan = HIStreamgraph()
    japan.name = "Japan"
    japan.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 1, 1, 1, 7, 5, 10, 2, 1, 5, 8
    ]

    let czechoslovakia = HIStreamgraph()
    czechoslovakia.name = "Czechoslovakia"
    czechoslovakia.data = [
        0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 4, 3, 1, 1, 6, 3, 3, 0, 0, 0, 0, 0, 0
    ]

    let poland = HIStreamgraph()
    poland.name = "Poland"
    poland.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 2, 6, 6
    ]

    let spain = HIStreamgraph()
    spain.name = "Spain"
    spain.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
    ]

    let china = HIStreamgraph()
    china.name = "China"
    china.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 8, 8, 11, 11, 9
    ]

    let southKorea = HIStreamgraph()
    southKorea.name = "South Korea"
    southKorea.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 6, 4, 11, 14, 8
    ]

    let czechRepublic = HIStreamgraph()
    czechRepublic.name = "Czech Republic"
    czechRepublic.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 4, 6, 8
    ]

    let belarus = HIStreamgraph()
    belarus.name = "Belarus"
    belarus.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 1, 3, 6
    ]

    let kazakhstan = HIStreamgraph()
    kazakhstan.name = "Kazakhstan"
    kazakhstan.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 1, 1
    ]

    let bulgaria = HIStreamgraph()
    bulgaria.name = "Bulgaria"
    bulgaria.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 3, 1, 0, 0
    ]

    let denmark = HIStreamgraph()
    denmark.name = "Denmark"
    denmark.data =  [
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0
    ]

    let ukraine = HIStreamgraph()
    ukraine.name = "Ukraine"
    ukraine.data =   [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 2, 0, 2
    ]

    let australia = HIStreamgraph()
    australia.name = "Australia"
    australia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 2, 3, 3
    ]

    let belgium = HIStreamgraph()
    belgium.name = "Belgium"
    belgium.data = [
        0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0
    ]

    let romania = HIStreamgraph()
    romania.name = "Romania"
    romania.data = [
        0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0
    ]

    let liechtenstein = HIStreamgraph()
    liechtenstein.name = "Liechtenstein"
    liechtenstein.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 2, 1, 0, 0, 0, 0, 0, 0, 0
    ]

    let yugoslavia = HIStreamgraph()
    yugoslavia.name = "Yugoslavia"
    yugoslavia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0
    ]

    let luxembourg = HIStreamgraph()
    luxembourg.name = "Luxembourg"
    luxembourg.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0
    ]

    let newZealand = HIStreamgraph()
    newZealand.name = "New Zealand"
    newZealand.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
    ]

    let northKorea = HIStreamgraph()
    northKorea.name = "North Korea"
    northKorea.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
    ]

    let slovakia = HIStreamgraph()
    slovakia.name = "Slovakia"
    slovakia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 1
    ]

    let croatia = HIStreamgraph()
    croatia.name = "Croatia"
    croatia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 3, 1
    ]

    let slovenia = HIStreamgraph()
    slovenia.name = "Slovenia"
    slovenia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 3, 8
    ]

    let latvia = HIStreamgraph()
    latvia.name = "Latvia"
    latvia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 4
    ]

    let estonia = HIStreamgraph()
    estonia.name = "Estonia"
    estonia.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 1, 0
    ]

    let uzbekistan = HIStreamgraph()
    uzbekistan.name = "Uzbekistan"
    uzbekistan.data = [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
    ]

    options.series = [finland, austria, sweden, norway, us, eastGermany, westGermany, germany, netherlands, italy, canada, switzerland, greatBritain, france, hungary, unifiedTeam, sovietUnion, russia, japan, czechoslovakia, poland, spain, china, southKorea, czechRepublic, belarus, kazakhstan, bulgaria, denmark, ukraine, austria, belgium, romania, liechtenstein, yugoslavia, luxembourg, newZealand, northKorea, slovakia, croatia, slovenia, latvia, estonia, uzbekistan
    ]

    let exporting = HIExporting()
    exporting.sourceWidth = 800
    exporting.sourceHeight = 600
    options.exporting = exporting

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
