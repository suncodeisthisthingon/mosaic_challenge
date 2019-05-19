# Is This Thing On?
### Mosaic Solar Connectivity Challenge, [SunCode 2019 Hackathon](https://suncode2019.devpost.com/), Oakland, CA
### [Winner: 2nd place](https://devpost.com/software/isthisthingon)

Nav & David -- hacked this, built that.

Holger & Rodin -- wrangled the data, did the math.

John -- recruited the team, presented the results.

## The Mosaic Challenge:
### “Find a way to determine with a level of confidence that a just installed residential PV system has been energized i.e., ‘turned on’.”

This is important to the customer, the installer, and to Mosaic. In many cases, a residential PV system can be installed and operating weeks or even months before final notification comes from the utility to Mosaic. By shortening this period dramatically, Mosaic can pay its installers faster (making more installers want to work with Mosaic), and can deliver accurate bills to customers sooner.

Our solution uses machine-learning analysis to facilitate smarter human decisions. The system compares historical interval metered load data with similar data available after installation date to detect a change attributable to the activation of the PV system. The ML algorithm becomes more accurate as more residential PV systems are processed.
Results are presented to a Mosaic agent via an app that shows a simple score representing the probability that a particular system has been energized. The agent can then accept the ML decision, reject that decision, or look at the underlying graphs of usage data and expected PV output for the location of the house.
