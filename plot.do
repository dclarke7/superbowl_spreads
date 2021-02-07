// Source: https://www.oddsshark.com/nfl/super-bowl/betting-odds-history
import delim using "superbowl_spreads.csv", clear

kdensity spread, ///
  xlabels(0 "0" 3 "3" 5 "5" 10 "10" 15 "15" ) ///
  xline(3, lcol(red)) graphregion(color(white)) ///
  title("Super Bowl Spreads: 1967-2020") ///
  xtitle("Absolute Value of Spread") ytitle("Density") note("")

gr export "spreads.png", as(png) replace
