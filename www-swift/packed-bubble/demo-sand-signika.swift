import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "packedbubble"
    chart.height = "100%"
    options.chart = chart

    let title = HITitle()
    title.text = "Carbon emissions around the world (2014)"
    options.title = title

    let tooltip = HITooltip()
    tooltip.useHTML = true
    tooltip.pointFormat = "<b>{point.name}:</b> {point.value}m CO<sub>2</sub>"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.packedbubble = HIPackedbubble()
    plotOptions.packedbubble.minSize = "30%"
    plotOptions.packedbubble.maxSize = "120%"
    // plotOptions.packedbubble.zMin = 0
    // plotOptions.packedbubble.zMax = 1000
    plotOptions.packedbubble.layoutAlgorithm = HILayoutAlgorithm()
    plotOptions.packedbubble.layoutAlgorithm.splitSeries = "false"
    plotOptions.packedbubble.layoutAlgorithm.gravitationalConstant = 0.02

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.name}"
    dataLabels.filter = HIFilter()
    dataLabels.filter.property = "y"
    dataLabels.filter.operator = ">"
    dataLabels.filter.value = 250
    dataLabels.style = HIStyle()
    dataLabels.style.color = "black"
    dataLabels.style.textOutline = "none"
    dataLabels.style.fontWeight = "normal"

    plotOptions.packedbubble.dataLabels = [dataLabels]

    options.plotOptions = plotOptions

    let europe = HIPackedbubble()
    europe.name = "Europe"

    let germany = HIData()
    germany.name = "Germany"
    germany.value = 767.1

    let belgium = HIData()
    belgium.name = "Belgium"
    belgium.value = 97.2

    let czechRepublic = HIData()
    czechRepublic.name = "Czech Republic"
    czechRepublic.value = 111.7

    let netherlands = HIData()
    netherlands.name = "Netherlands"
    netherlands.value = 158.1

    let spain = HIData()
    spain.name = "Spain"
    spain.value = 241.6

    let ukraine = HIData()
    ukraine.name = "Ukraine"
    ukraine.value = 249.1

    let poland = HIData()
    poland.name = "Poland"
    poland.value = 298.1

    let france = HIData()
    france.name = "France"
    france.value = 323.7

    let romania = HIData()
    romania.name = "Romania"
    romania.value = 78.3

    let unitedKingdom = HIData()
    unitedKingdom.name = "United Kingdom"
    unitedKingdom.value = 415.4

    let turkey = HIData()
    turkey.name = "Turkey"
    turkey.value = 353.2

    let italy = HIData()
    italy.name = "Italy"
    italy.value = 337.6

    let greece = HIData()
    greece.name = "Greece"
    greece.value = 71.1

    let austria = HIData()
    austria.name = "Austria"
    austria.value = 69.8

    let belarus = HIData()
    belarus.name = "Belarus"
    belarus.value = 67.7

    let serbia = HIData()
    serbia.name = "Serbia"
    serbia.value = 59.3

    let finland = HIData()
    finland.name = "Finland"
    finland.value = 54.8

    let bulgaria = HIData()
    bulgaria.name = "Bulgaria"
    bulgaria.value = 51.2

    let portugal = HIData()
    portugal.name = "Portugal"
    portugal.value = 48.3

    let norway = HIData()
    norway.name = "Norway"
    norway.value = 44.4

    let sweden = HIData()
    sweden.name = "Sweden"
    sweden.value = 44.3

    let hungary = HIData()
    hungary.name = "Hungary"
    hungary.value = 43.7

    let switzerland = HIData()
    switzerland.name = "Switzerland"
    switzerland.value = 40.2

    let denmark = HIData()
    denmark.name = "Denmark"
    denmark.value = 40

    let slovakia = HIData()
    slovakia.name = "Slovakia"
    slovakia.value = 34.7

    let ireland = HIData()
    ireland.name = "Ireland"
    ireland.value = 34.6

    let croatia = HIData()
    croatia.name = "Croatia"
    croatia.value = 20.7

    let estonia = HIData()
    estonia.name = "Estonia"
    estonia.value = 19.4

    let slovenia = HIData()
    slovenia.name = "Slovenia"
    slovenia.value = 16.7

    let lithuania = HIData()
    lithuania.name = "Lithuania"
    lithuania.value = 12.3

    let luxembourg = HIData()
    luxembourg.name = "Luxembourg"
    luxembourg.value = 10.4

    let macedonia = HIData()
    macedonia.name = "Macedonia"
    macedonia.value = 9.5

    let moldova = HIData()
    moldova.name = "Moldova"
    moldova.value = 7.8

    let latvia = HIData()
    latvia.name = "Latvia"
    latvia.value = 7.5

    europe.data = [germany, belgium, czechRepublic, netherlands, spain, ukraine, poland, france, romania, unitedKingdom, turkey, italy, greece, austria, belarus, serbia, finland, bulgaria, portugal, norway, sweden, hungary, switzerland, denmark, slovakia, ireland, croatia, estonia, slovenia, lithuania, luxembourg, macedonia, moldova, latvia]

    let africa = HIPackedbubble()
    africa.name = "Africa"

    let senegal = HIData()
    senegal.name = "Senegal"
    senegal.value = 8.2

    let cameroon = HIData()
    cameroon.name = "Cameroon"
    cameroon.value = 9.2

    let zimbabwe = HIData()
    zimbabwe.name = "Zimbabwe"
    zimbabwe.value = 13.1

    let ghana = HIData()
    ghana.name = "Ghana"
    ghana.value = 14.1

    let kenya = HIData()
    kenya.name = "Kenya"
    kenya.value = 14.1

    let sudan = HIData()
    sudan.name = "Sudan"
    sudan.value = 17.3

    let tunisia = HIData()
    tunisia.name = "Tunisia"
    tunisia.value = 24.3

    let angola = HIData()
    angola.name = "Angola"
    angola.value = 25

    let libya = HIData()
    libya.name = "Libya"
    libya.value = 50.6

    let ivoryCoast = HIData()
    ivoryCoast.name = "Ivory Coast"
    ivoryCoast.value = 7.3

    let morocco = HIData()
    morocco.name = "Morocco"
    morocco.value = 60.7

    let ethiopia = HIData()
    ethiopia.name = "Ethiopia"
    ethiopia.value = 8.9

    let unitedRepublicOfTanzania = HIData()
    unitedRepublicOfTanzania.name = "United Republic of Tanzania"
    unitedRepublicOfTanzania.value = 9.1

    let nigeria = HIData()
    nigeria.name = "Nigeria"
    nigeria.value = 93.9

    let southAfrica = HIData()
    southAfrica.name = "South Africa"
    southAfrica.value = 392.7

    let egypt = HIData()
    egypt.name = "Egypt"
    egypt.value = 225.1

    let algeria = HIData()
    algeria.name = "Algeria"
    algeria.value = 141.5

    africa.data = [senegal, cameroon, zimbabwe, ghana, kenya, sudan, tunisia, angola, libya, ivoryCoast, morocco, ethiopia, unitedRepublicOfTanzania, nigeria, southAfrica, egypt, algeria]

    let oceania = HIPackedbubble()
    oceania.name = "Oceania"

    let australia = HIData()
    australia.name = "Australia"
    australia.value = 409.4

    let newZealand = HIData()
    newZealand.name = "New Zealand"
    newZealand.value = 34.1

    let papuaNewGuinea = HIData()
    papuaNewGuinea.name = "Papua New Guinea"
    papuaNewGuinea.value = 141.5

    oceania.data = [australia, newZealand, papuaNewGuinea]

    let northAmerica = HIPackedbubble()
    northAmerica.name = "North America"

    let costaRica = HIData()
    costaRica.name = "Costa Rica"
    costaRica.value = 7.6

    let honduras = HIData()
    honduras.name = "Honduras"
    honduras.value = 8.4

    let jamaica = HIData()
    jamaica.name = "Jamaica"
    jamaica.value = 8.3

    let panama = HIData()
    panama.name = "Panama"
    panama.value = 10.2

    let guatemala = HIData()
    guatemala.name = "Guatemala"
    guatemala.value = 12

    let dominicanRepublic = HIData()
    dominicanRepublic.name = "Dominican Republic"
    dominicanRepublic.value = 23.4

    let cuba = HIData()
    cuba.name = "Cuba"
    cuba.value = 30.2

    let usa = HIData()
    usa.name = "USA"
    usa.value = 5334.5

    let canada = HIData()
    canada.name = "Canada"
    canada.value = 566

    let mexico = HIData()
    mexico.name = "Mexico"
    mexico.value = 456.3

    northAmerica.data = [costaRica, honduras, jamaica, panama, guatemala, dominicanRepublic, cuba, usa, canada, mexico]

    let southAmerica = HIPackedbubble()
    southAmerica.name = "South America"

    let elSalvador = HIData()
    elSalvador.name = "El Salvador"
    elSalvador.value = 7.2

    let uruguay = HIData()
    uruguay.name = "Uruguay"
    uruguay.value = 8.1

    let bolivia = HIData()
    bolivia.name = "Bolivia"
    bolivia.value = 17.8

    let trinidadAndTobago = HIData()
    trinidadAndTobago.name = "Trinidad and Tobago"
    trinidadAndTobago.value = 34

    let ecuador = HIData()
    ecuador.name = "Ecuador"
    ecuador.value = 43

    let chile = HIData()
    chile.name = "Chile"
    chile.value = 78.6

    let peru = HIData()
    peru.name = "Peru"
    peru.value = 52

    let colombia = HIData()
    colombia.name = "Colombia"
    colombia.value = 74.1

    let brazil = HIData()
    brazil.name = "Brazil"
    brazil.value = 501.1

    let argentina = HIData()
    argentina.name = "Argentina"
    argentina.value = 199

    let venezuela = HIData()
    venezuela.name = "Venezuela"
    venezuela.value = 195.2

    southAmerica.data = [elSalvador, uruguay, bolivia, trinidadAndTobago, ecuador, chile, peru, colombia, brazil, argentina, venezuela]

    let asia = HIPackedbubble()
    asia.name = "Asia"

    let nepal = HIData()
    nepal.name = "Nepal"
    nepal.value = 6.5

    let georgia = HIData()
    georgia.name = "Georgia"
    georgia.value = 6.5

    let bruneiDarussalam = HIData()
    bruneiDarussalam.name = "Brunei Darussalam"
    bruneiDarussalam.value = 7.4

    let kyrgyzstan = HIData()
    kyrgyzstan.name = "Kyrgyzstan"
    kyrgyzstan.value = 7.4

    let afghanistan = HIData()
    afghanistan.name = "Afghanistan"
    afghanistan.value = 7.9

    let myanmar = HIData()
    myanmar.name = "Myanmar"
    myanmar.value = 9.1

    let mongolia = HIData()
    mongolia.name = "Mongolia"
    mongolia.value = 14.7

    let sriLanka = HIData()
    sriLanka.name = "Sri Lanka"
    sriLanka.value = 16.6

    let bahrain = HIData()
    bahrain.name = "Bahrain"
    bahrain.value = 20.5

    let yemen = HIData()
    yemen.name = "Yemen"
    yemen.value = 22.6

    let jordan = HIData()
    jordan.name = "Jordan"
    jordan.value = 22.3

    let lebanon = HIData()
    lebanon.name = "Lebanon"
    lebanon.value = 21.1

    let azerbaijan = HIData()
    azerbaijan.name = "Azerbaijan"
    azerbaijan.value = 31.7

    let singapore = HIData()
    singapore.name = "Singapore"
    singapore.value = 47.8

    let hongKong = HIData()
    hongKong.name = "Hong Kong"
    hongKong.value = 49.9

    let syria = HIData()
    syria.name = "Syria"
    syria.value = 52.7

    let dPRKorea = HIData()
    dPRKorea.name = "DPR Korea"
    dPRKorea.value = 59.9

    let israel = HIData()
    israel.name = "Israel"
    israel.value = 64.8

    let turkmenistan = HIData()
    turkmenistan.name = "Turkmenistan"
    turkmenistan.value = 70.6

    let oman = HIData()
    oman.name = "Oman"
    oman.value = 74.3

    let qatar = HIData()
    qatar.name = "Qatar"
    qatar.value = 88.8

    let philippines = HIData()
    philippines.name = "Philippines"
    philippines.value = 96.9

    let kuwait = HIData()
    kuwait.name = "Kuwait"
    kuwait.value = 98.6

    let uzbekistan = HIData()
    uzbekistan.name = "Uzbekistan"
    uzbekistan.value = 122.6

    let iraq = HIData()
    iraq.name = "Iraq"
    iraq.value = 139.9

    let pakistan = HIData()
    pakistan.name = "Pakistan"
    pakistan.value = 158.1

    let vietnam = HIData()
    vietnam.name = "Vietnam"
    vietnam.value = 190.2

    let unitedArabEmirates = HIData()
    unitedArabEmirates.name = "United Arab Emirates"
    unitedArabEmirates.value = 201.1

    let malaysia = HIData()
    malaysia.name = "Malaysia"
    malaysia.value = 227.5

    let kazakhstan = HIData()
    kazakhstan.name = "Kazakhstan"
    kazakhstan.value = 236.2

    let thailand = HIData()
    thailand.name = "Thailand"
    thailand.value = 272

    let taiwan = HIData()
    taiwan.name = "Taiwan"
    taiwan.value = 276.7

    let indonesia = HIData()
    indonesia.name = "Indonesia"
    indonesia.value = 453

    let saudiArabia = HIData()
    saudiArabia.name = "Saudi Arabia"
    saudiArabia.value = 494.8

    let japan = HIData()
    japan.name = "Japan"
    japan.value = 1278.9

    let china = HIData()
    china.name = "China"
    china.value = 10540.8

    let india = HIData()
    india.name = "India"
    india.value = 2341.9

    let russia = HIData()
    russia.name = "Russia"
    russia.value = 1766.4

    let iran = HIData()
    iran.name = "Iran"
    iran.value = 618.2

    let korea = HIData()
    korea.name = "Korea"
    korea.value = 610.1

    asia.data = [nepal, georgia, bruneiDarussalam, kyrgyzstan, afghanistan, myanmar, mongolia, sriLanka, bahrain, yemen, jordan, lebanon, azerbaijan, singapore, hongKong, syria, dPRKorea, israel, turkmenistan, oman, qatar, philippines, kuwait, uzbekistan, iraq, pakistan, vietnam, unitedArabEmirates, malaysia, kazakhstan, thailand, taiwan, indonesia, saudiArabia, japan, china, india, russia, iran, korea]

    options.series = [europe, africa, oceania, northAmerica, southAmerica, asia]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
