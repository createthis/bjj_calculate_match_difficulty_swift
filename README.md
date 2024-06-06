# Background
This is just a coding exercise I performed for work. The license is probably encumbered as it was work-for-hire.
I'm just providing it here because it was interesting to me. I produced the same code in several different languages.
This is the Swift version. You need a Mac and probably xcode to compile this.

# Boyd Belts
The premise of this code is a concept I first heard from Rener Gracie in this video:
https://youtu.be/FGk_urw1_hA?si=CAhp6mbehzguBWF2&t=103

He terms this concept "Boyd Belts". The idea is that you can be a black belt in jiu-jitsu and still lose to younger,
stronger, heavier, lower skilled opponents. This code is just a fun exercise to calculate match difficulty between two BJJ 
practitioners based on their "Boyd Belt".

I took some creative license and added height to the "Boyd Belt" ranking system, with every 6" being a belt. I have
no idea if that's legit or not. I'm just a one stripe white belt. It's all made up anyway.

The practitioner stats are described in JSON. Feel free to download the code, plug in your own numbers, recompile, and run
it.

# Getting Started

## Mac OS X
- The main code is in `Sources/bjjCalculateMatchDifficulty/main.swift`.
- The tests are in `Tests/bjjCalculateMatchDifficultyTests/BjjTests.swift`.

I set up this project using `SwiftPM`, not `xcode`, so don't try to open the project in `xcode`. Just run the CLI command below:
```bash
swift test
```

## Other
I don't know, sorry. I think Swift is mostly a Mac thing. Google or ask ChatGPT.
