# Pre-work - Calcy

**Calcy** is a tip calculator application for iOS.

Submitted by: **Meshach Adoe**

Time spent: **10** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and <del>currency thousands separators.</del>
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Implementing a settings view controller using a navigation controller
- [x] Ability to toggle between dark mode and light mode within settings page
- [x] Using UserDefaults to remember user preference on dark/light mode
- [x] Using stack views and auto layout so views scale across different phone sizes

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/49OGe8rtdu.gif' title='Video Walkthrough 1' width='' alt='Video Walkthrough 1' />
<img src='http://g.recordit.co/rViaJYRYNY.gif' title='Video Walkthrough 2' width='' alt='Video Walkthrough 2' />


GIF created with [RecordIt](https://recordit.co/).

## Notes

The main challenge while building this application is how to pass information between different view controllers. In order to keep track of whether the user has toggled the dark mode switch, I stored the settings to UserDefaults. The information is then loaded up as the user opens up the screen, and the user preferences are kept across app restarts.

Another challenge was positioning the visual elements within the interface, which prompted me to explore using stack views with auto layout to ensure that the view is scalable across different phone screen sizes. 

## License

    Copyright [2021] [Meshach Adoe]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.