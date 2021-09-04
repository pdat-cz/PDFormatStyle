# PDFormatStyle


## FormatStyle for Date

```
import PDFormatStyle

Date().formatted(.yearPeriod())
"2021"

Date().formatted(.monthPeriod()) 
"2021-12"

Date().formatted(.dayPeriod() )   
"2021-12-31"

Date().formatted(.dayPeriod(timezone:"Europe/Prague))   
"2021-01-01"

Date().formatted(.hourPeriod()) 
"15:35"

```
