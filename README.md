# Rail Logistics Dispatcher factorio mod

Adds dispatcher entity for fully organized rail logistics.

The mod is in testing. No cardinal changes are expected - only improvements and, possibly, new features.

This mod is similar to the famous LTN mod with the following differences:


| This mod                                                                          | LTN                                                                             |
|-----------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| A separate entity (dispatcher) that is installed next to the station              | Special station entity                                                          |
| Full blueprint and Undo support                                                   | Connections are lost in some cases                                              |
| Dispatcher has GUI and can also be configured with a constant combinator          | Needs constant combinator for setup                                              |
| Optimized for multi-cargo deliveries (first motivation to write this mod)         | Supports multi-cargo delivery, but due to bugs it is impossible to fully use it |
| MIT license. Modders of all countries unite! (second motivation) | Restrictive license                                                             |


Minor features:

1. Train becomes free on the way to the depot and can receive a new delivery if there is enough fuel.
2. Cleaning station is a part of the mod.
3. Dispatcher is a 1x1 building with two connection points: input and output. Look in Alt mode.
4. Dispatcher looks like a lamp:
    - No light - can't find a station to connect to. The Rail Logisitcs Dispatcher must be one tile away from the station in order to connect.
    - Dark green - dispatcher is off.
    - Green - dispatcher in supply/request mode and awaiting new delivery.
    - Yellow - in supply/request mode - has delivery. In depot mode - refueling.
    - Blue - train at station.
    - White - dispatcher in depot, fuel, or clean mode.
    - Red - something is wrong.
5. Play to see more features!



## Development

I use IntelliJ IDEA with Luanalysis plugin: https://github.com/Benjamin-Dobell/IntelliJ-Luanalysis.
Most functions have descriptions of parameters and return values. In addition, there are factorio-api headers.

## Contribution

Please, if you contribute, try to do it beautifully.
Add yourself to the list of contributors if you make pull request.

I reserve the right to reject a pull request. 
In this case, you can consider the comments and try again, 
or clone the repository and upload as your own mod.

Please keep English localization up to date. I will take care of the Russian localization.
Other languages, if necessary, please place a separate mod.

Use `build/build.js` for making mod-zip file and for processing some files (locale/*.cfg). 

## Contributors

1. Viidi - Author and initiator of this mod.
2. WristWatch - English, fixes.
3. modo_lv - Nullius compatibility.

## License

I chose the most free license. But I have a request: do not delete me from the authors. And in the description of your mod, indicate the source.

And when making interesting improvements, send a pull request.
