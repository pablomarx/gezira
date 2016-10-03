'From Squeak3.8gamma of ''24 November 2004'' [latest update: #6639] on 6 April 2005 at 11:54:28 am'!

!Color methodsFor: 'conversions' stamp: 'SJW 10/2/2016 21:59'!
asGeziraFill
        ^ GeziraFill uniform: self! !
!Object methodsFor: 'testing' stamp: 'SJW 10/2/2016 22:01'!
isRectangle
        ^false! !
!Rectangle methodsFor: 'testing' stamp: 'SJW 10/2/2016 22:01'!
isRectangle
        ^true! !
!Rectangle methodsFor: 'transforming' stamp: 'SJW 10/2/2016 22:01'!
asGeziraPath 
        ^GeziraPath new floats: {
                origin x. origin y.  origin x. origin y.  corner x. origin y.
                corner x. origin y.  corner x. origin y.  corner x. corner y.
                corner x. corner y.  corner x. corner y.  origin x. corner y.
                origin x. corner y.  origin x. corner y.  origin x. origin y}! !
!Color methodsFor: 'conversions' stamp: 'SJW 10/2/2016 22:42'!
asFloatArray
        ^FloatArray
                with: (self privateRed / ComponentMax)
                with: (self privateGreen asFloat / ComponentMax)
                with: (self privateBlue asFloat / ComponentMax)
                with: self alpha! !
!Point methodsFor: 'truncation and round off' stamp: 'SJW 10/2/2016 22:44' prior: 48566064!
roundTo: n
        ^(x roundTo: n x) @ (y roundTo: n y)! !
