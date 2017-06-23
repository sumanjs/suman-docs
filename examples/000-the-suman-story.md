I started writing Suman in October 2015. After 6 months of working with Mocha, I started experiencing many of its shortcomings.
 Mocha has a handful of major problems and 100 minor ones. Frankly, Mocha is poorly designed software - the fact that it concatenates
 all your tests in a single process is simply not how testing should work; especially for a dynamic language where the global
 scope can be easily polluted by inexperienced developers. Once you start writing non-trivial tests with Mocha, it becomes 
 very difficult to debug tests and run only one test at a time. 
 
About 2 weeks after I started writing Suman, I discovered AVA. AVA is much better than Mocha, but it "forces" you to use transpilation
and heavily depends on its own assertion library for correct functionality. Meaning - you can't use the assertion library that you already familiar with.
It's also missing some nice features from Mocha, including nested blocks. So I decided to continue working on Suman, and essentially take the best from Mocha and AVA, 
and also borrow the best ideas from TapJS/Tape and Lab (Lab is the test runner for the Hapi framework.). I have spent a lot of time
on the issue trackers on basically every Node.js testing framework.

As of 2017, TypeScript has become strong. I see a lot of value in using TypeScript for all kinds of projects. Suman encourages the use of
TS, and has even more support for TS than Babel, etc.

Just like AVA, Suman runs tests in child processes. With Suman, you can also run any single test with just the node executable,
something that you cannot do with AVA. A big hangup for me. Beyond the standard advantages of speed, isolation and independence, running tests
in child processes has one other major advantage: The Suman test runner is capable of running tests in any language. While the Suman runner
communicates with Node.js child processes through the standard IPC channel, 
it can also parse TAP output from a child process running in any language.

Suman is setup to run Node.js tests, and any test in any language that writes TAP to stdout. This is pretty awesome.

Support for transpilation is also first rate - Suman supports generic transpilation/compilation for any language.
The configuration to support transpilation is the same, no matter what language you are looking to transpile/compile.
Over time, better and better support for incremental transpilation/compilation will be created.
