Write a function that accepts 2 hexadecimal RGB colour code strings and a number N.

The output should be an array of hexadecimal RGB colour code strings that represent a gradient between the two given codes over N steps. you don't need to make a UI or anything, just the core function is fine.

You can assume that there is enough difference between the start and finish colours to accommodate N steps. you may also assume that the input are both valid, 6 character hexadecimal strings (but feel free to add in checks).

Please solve this without using any domain-specific third-party libraries. It's fine to use generic libraries (a library for testing, for example).

A successful answer is any that gives a visually correct gradient. The exact results do not have to match these examples (rounding up or down doesn't really matter as the Human eye can't perceive the difference).

This is a nice function to test because it's "pure" in that certain input should always return the same output.

Note: Here is a small website that implements this using Javascript. It may help to work out if you have correct answers. Link: http://www.perbang.dk/rgbgradient/

For example:
INPUT: gradient("FF334C", "D8FF1A", 10)
OUTPUT: ["FF334C", "FA4946", "F66040", "F2773B", "ED8D35", "E9A430", "E5BB2A", "E0D125", "DCE81F", "D8FF1A"]

INPUT gradient("000000", "FFFFFF", 16)
OUTPUT:  ["000000", "111111", "222222", "333333", "444444", "555555", "666666", "777777", "888888", "999999", "aaaaaa", "bbbbbb", "cccccc", "dddddd", "eeeeee", "ffffff"]
-----------------
