# Pollen

_Pollen makes breathing hard for me._

![pollen](https://raw.github.com/jlord/pollen/master/initialpollenmap.png)

Started searching for pollen data and ended up on a [NASA site](http://gcmd.gsfc.nasa.gov/KeywordSearch/Metadata.do?Portal=GCMD&KeywordPath=&EntryId=EARTH_ATM_NGDC_PALEO_POLLEN1&MetadataView=Data&MetadataType=0&lbnode=mdlb4), which lead me to [this site](http://hurricane.ncdc.noaa.gov/pls/paleox/f?p=518:1:2139012306693191:::APP:PROXYTOSEARCH:16:) for searching the databases, but there wasn't one for just North America. I next ended up on a [National Climatic Data Center site](http://www.ncdc.noaa.gov/paleo/pollen.html), which listed a [North American Modern Pollen dataset](http://www.lpc.uottawa.ca/data/modern/). That seems legit. 

I'm not a scientist. I don't really know how to use scientific data.

### Files in this repo & how they got here

- I took the original data, `whitmoreetal2005_v1-73.xls`, and put it in [Open Refine](http://openrefine.org/) to try and reduce it to the most relevant information and hopefully make it under the 400,000 cell limit of Google Spreadsheets. My Open Refine edit history is in `open-refine-history.json`.

- I converted the Refined data to `whitmoreetal2005_v1-73-pollendata-common-subset.csv` and hosted it on [this Google Spreadsheet](https://docs.google.com/a/github.com/spreadsheet/ccc?key=0AuOjlXjUrSbAdEZaYVRCWEVQdXd4dnJxaGdtdWV5QVE#gid=0).

- I used my [Google Spreadsheet to geoJSON module](http://www.github.com/jlord/gs2geojson) to convert it to `0AuOjlXjUrSbAdEZaYVRCWEVQdXd4dnJxaGdtdWV5QVE.geojson`. Cause why not! _An FYI, if you click on this file and view it in the lovely GitHub maps, the numbers represent the number of points that are recording pollen data, not the amount of pollen._

- The common names and types (tree, weed or grass) are in `common-pollens.json`.

- A stylesheet for [TileMill](http://www.mapbox.com/tilemill) in `style.mss` is bare minimum and messy but shows largest pollen sums (which in the original dataset is explained as _POLLSUM [numeric] pollen sum as calculated from [Abies]+…+[ Xanthium] annp [numeric] total annual precipitation IGBP101 Modal vegetation type from DISCover dataset V2, 101 x 101 km search window.  IGBP classification scheme_) (but I don't know what that means). 

I don't really have any plans beyond this point, just wanted to play with it (and see if I could prove living in the Bay is a TERRIBLE idea for me).

Sources referenced above:
- [NASA, North American Pollen Database](http://gcmd.gsfc.nasa.gov/KeywordSearch/Metadata.do?Portal=GCMD&KeywordPath=&EntryId=EARTH_ATM_NGDC_PALEO_POLLEN1&MetadataView=Data&MetadataType=0&lbnode=mdlb4)
- [National Climatic Data Center, Pollen Search](http://hurricane.ncdc.noaa.gov/pls/paleox/f?p=518:1:2139012306693191:::APP:PROXYTOSEARCH:16:0)
- [National Climatic Data Center site](http://www.ncdc.noaa.gov/paleo/pollen.html)
- [North American Pollen dataset](http://www.lpc.uottawa.ca/data/modern/)