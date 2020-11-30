import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["dumbbell"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "dumbbell"
    chart.inverted = true
    options.chart = chart

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let title = HITitle()
    title.text = "Change in Life Expectancy"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "1960 vs 2018"
    options.subtitle = subtitle

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let xAxis = HIXAxis()
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Life Expectancy (years)"
    options.yAxis = [yAxis]

    let dumbbell = HIDumbbell()
    dumbbell.name = "Life expectancy change"

    let austria = HIData()
    austria.name = "Austria"
    austria.low = 69
    austria.high = 82

    let belgium = HIData()
    belgium.name = "Belgium"
    belgium.low = 70
    belgium.high = 81

    let bulgaria = HIData()
    bulgaria.name = "Bulgaria"
    bulgaria.low = 69
    bulgaria.high = 75

    let croatia = HIData()
    croatia.name = "Croatia"
    croatia.low = 65
    croatia.high = 78

    let cyprus = HIData()
    cyprus.name = "Cyprus"
    cyprus.low = 70
    cyprus.high = 81

    let czechRepublic = HIData()
    czechRepublic.name = "Czech Republic"
    czechRepublic.low = 70
    czechRepublic.high = 79

    let denmark = HIData()
    denmark.name = "Denmark"
    denmark.low = 72
    denmark.high = 81

    let estonia = HIData()
    estonia.name = "Estonia"
    estonia.low = 68
    estonia.high = 78

    let finland = HIData()
    finland.name = "Finland"
    finland.low = 69
    finland.high = 81

    let france = HIData()
    france.name = "France"
    france.low = 70
    france.high = 83

    let greece = HIData()
    greece.name = "Greece"
    greece.low = 68
    greece.high = 81

    let spain = HIData()
    spain.name = "Spain"
    spain.low = 69
    spain.high = 83

    let netherlands = HIData()
    netherlands.name = "Netherlands"
    netherlands.low = 73
    netherlands.high = 82

    let ireland = HIData()
    ireland.name = "Ireland"
    ireland.low = 70
    ireland.high = 82

    let lithuania = HIData()
    lithuania.name = "Lithuania"
    lithuania.low = 70
    lithuania.high = 75

    let luxembourg = HIData()
    luxembourg.name = "Luxembourg"
    luxembourg.low = 68
    luxembourg.high = 83

    let latvia = HIData()
    latvia.name = "Latvia"
    latvia.low = 70
    latvia.high = 75

    let malta = HIData()
    malta.name = "Malta"
    malta.low = 69
    malta.high = 82

    let germany = HIData()
    germany.name = "Germany"
    germany.low = 69
    germany.high = 81

    let poland = HIData()
    poland.name = "Poland"
    poland.low = 68
    poland.high = 78

    let portugal = HIData()
    portugal.name = "Portugal"
    portugal.low = 63
    portugal.high = 81

    let romania = HIData()
    romania.name = "Romania"
    romania.low = 66
    romania.high = 75

    let slovakia = HIData()
    slovakia.name = "Slovakia"
    slovakia.low = 70
    slovakia.high = 77

    let slovenia = HIData()
    slovenia.name = "Slovenia"
    slovenia.low = 69
    slovenia.high = 81

    let sweden = HIData()
    sweden.name = "Sweden"
    sweden.low = 73
    sweden.high = 82

    let hungary = HIData()
    hungary.name = "Hungary"
    hungary.low = 68
    hungary.high = 76

    let italy = HIData()
    italy.name = "Italy"
    italy.low = 69
    italy.high = 83

    let uk = HIData()
    uk.name = "UK"
    uk.low = 71
    uk.high = 81

    dumbbell.data = [austria, belgium, bulgaria, croatia, cyprus, czechRepublic, denmark, estonia, finland, france, greece, spain, netherlands, ireland, lithuania, luxembourg, latvia, malta, germany, poland, portugal, romania, slovakia, slovenia, sweden, hungary, italy, uk]

    options.series = [dumbbell]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
