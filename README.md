# WitHelloWorld

Simple implementation of the tutorial available at: https://wit.ai/docs/ios

## Getting Started
 1. Install [CocoaPods](http://guides.cocoapods.org/using/getting-started.html#installation) if it's not already installed
 2. Install the Wit pod within the root directory of the project via ```pod install```
 3. Replace `xxx` with your access token in `FOOAppDeletage.m`:

```
[Wit sharedInstance].accessToken = @"MY_TOKEN"; // replace xxx by your Wit access token
```