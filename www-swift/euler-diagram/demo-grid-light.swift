import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["venn"]

    let options = HIOptions()

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{point.name}: {point.longDescription}."
    options.accessibility = accessibility

    let title = HITitle()
    title.text = "Relationship between Euler and Venn diagrams"
    options.title = title

    let tooltip = HITooltip()
    tooltip.headerFormat = "<span style=\"color:{point.color}\">\u{2022}</span><span style=\"font-size: 14px\"> {point.point.name}</span><br/>"
    tooltip.pointFormat = "{point.longDescription}<br><span style=\"font-size: 10px\">Source: Wikipedia</span>"
    options.tooltip = tooltip

    let venn = HIVenn()
    venn.name = "The Unattainable Triangle"

    let data1 = HIData()
    data1.sets = ["A"]
    data1.value = 4
    data1.name = "Euler diagrams"
    // data1.longDescription = "An Euler diagram is a diagrammatic means of representing sets and their relationships. Unlike Venn diagrams, which show all possible relations between different sets, the Euler diagram shows only relevant relationships."

    let data2 = HIData()
    data2.sets = ["B"]
    data2.value = 1
    data2.name = "Venn diagrams"
    // data2.longDescription = "In Venn diagrams the curves are overlapped in every possible way, showing all possible relations between the sets. They are thus a special case of Euler diagrams, which do not necessarily show all relations"

    let data3 = HIData()
    data3.sets = ["A", "B"]
    data3.value = 1

    venn.data = [data1, data2, data3]

    options.series = [venn]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
