# Economic Position
The "Economic Position Vector" or "EP" for short is a economic vector that represents an individuals "position" within an economy. This number is a simple easily calculable number that enables cool position, velocity, acceleration types of analysis.

## Terms
### 1. Net Worth
[Net worth](https://en.wikipedia.org/wiki/Net_worth) (_CF_) is the sum of an individuals [assets](https://en.wikipedia.org/wiki/Asset) (_A_) minus the sum of their [liabilities](https://en.wikipedia.org/wiki/Liability_\(financial_accounting\)) (_L_).
Net Worth alone does not account for:
- Inflation (Time variablity in past)
- Currency (Country variablity)
- Cost of Living (Regional variablity)
- Changes in value (Time variabilty in future)  

$$  
NW = \sum_{A=0}^{assets} A - \sum_{L=0}^{liabilities} L  
$$  
### 2. GDP  
GDP here represents [Gross Domestic Product](https://en.wikipedia.org/wiki/Gross_domestic_product) which is a monetary measure of the market value of all the final goods and services produced in a specific time period by countries.
### 3. Economic Position (EP)
The number this paper is all about __EP__!. Economic position is a unitless time and regional invariant metric to understand an individual or groups "position" within an economy.  

$$  
EP = \frac{NW}{GDP}  
$$  

## Usage
App runs out of a docker container, so use run.sh to run the application "standhope.py"
```bash
./run.sh --help
```

## Examples
```bash
```
