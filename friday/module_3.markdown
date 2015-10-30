## Ideas for Module 3 Friday Instructional Sessions

### Week 1

Build [Mastermind](https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown) in two hours.

### Week 2

Option 1: HackRace

*For Pivot teams that didn't use [Brakeman](https://github.com/presidentbeef/brakeman) only.*

With members of your Pivot team, challenge members of another team to a HackRace.

##### Rules

1. Both teams must provide their opponent with links to their live site and codebase.
1. Search through the codebase to find security vulnerabilities. You cannot use Brakeman to find the vulnerabilities. That would be too easy :)
1. First team to find a flaw, exploit it on the live site, and submit a pull request that fixes the flaw wins.

#### Option 2: Packet Sniffer

1. Read [this article](http://lifehacker.com/5853483/a-guide-to-sniffing-out-passwords-and-cookies-and-how-to-protect-yourself-against-it) and watch the video.
1. Install Wireshark.
1. Use the techniques in the article to locate HTTP and capture the act of you logging into your Pivot project.
1. Copy the cookie.
1. Sign out of your app and visit the homepage.
1. Use [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en) or a similar program to add the copied cookie.
1. Refresh the page and you should now be logged in.
1. On the Turing network, this technique only works for traffic coming from your own machine. Why is that? When would you be able to see this traffic from another machine? How can you protect your web apps from this vulnerability?

#### Option 3: Ruby Chops

Last week you started working on [Mastermind](https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown). For those that didn't get a working implementation try to get a complete working implementation.

If you have completed the spec, there are improvements that can be made.

* Work toward making it more Object-Oriented.
* Read through this post on [SOLID principles](https://robots.thoughtbot.com/back-to-basics-solid) and try using them to improve your code. If you're not sure where to start, take a look at the bullet points below.
* Can you get rid of `until` and `while` loops?
* Can you get rid of your `if` statements? And no, using `case` statements doesn't count. Take a look at the Open/Closed Principle in the article above and view the `parse` method in the before and after example for inspiration.

### Week 3

* Passion Projects

### Ideas

* Jorge and Josh live pairing on Mastermind???
* Show and Tell
* Front End
  * Wireframe - Live Coding
  * CSS Garden - Provide HTML and have students implement a different layout.
  * Visual Design - Non-Coding
  * Displaying things inline - Flexboxes
  * Frontend Bookclub
  * JS Frameworks
  * Shared Pinterest board for sharing layout inspiration
* Backend
  * Low Level Caching
  * Handle custom errors
  * Advanced RSpec Testing
