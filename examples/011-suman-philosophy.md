

<i>

Suman is a new test runner for Node.js and is focused on high-throughput maximum concurrency asynchronous testing of backend services.
High concurrency testing is not just good for performance, it encourages you to write "threadsafe" application code and test code.
As Node.js developers, it's easy to be complacent about thread safety since your code is running on a single thread, 
but that doesn't mean concurrent access to external resources won't happen.

This project summarily improves Mocha on every level, and also borrows excellent features from Tape/AVA such as the plan features and
the use of t as a singular param to both hooks and test cases. It all gels together quite nicely into a library that is much more 
powerful than both AVA and Mocha. _The biggest advantage Mocha has over Tape/AVA is the nested describe/suite blocks_. These are huge
once you start writing non-trivial tests. **By the way, conversion from Mocha to Suman is automated with this library.** The other advantage of Suman
is that Suman does not require transpilation - AVA does require transpilation - which adds a lot of complexity and overhead that you may not want. We don't need Babel
to have good features, nor do we need to transpile to get ES7 async/await behavior as this can be achieved with ES6 generators + promises!
Those using AVA or Tape who want something more powerful, and no more complex, will find the answers here.

Suman is feature-rich and very fun to use, because it has the same hooks and patterns as Mocha which we can all admit are quite fun to use. 
Suman is designed to be a direct successor to Mocha, Tape and Jasmine, and to compete with the new Node.js test runner AVA;
it's aim is to be more sophisticated and featureful than the competition.
Suman was designed so that there would be a super simple migration path from Mocha to Suman, but also provide
massive improvements over Mocha, specifically for backend testing. 

Mocha is most familiar to us and perhaps to you - Mocha was a great test library, but has many bugs and shortcomings 
that we experienced ourselves over time, and eventually we wanted a test runner that we could use that was more robust and more streamlined than Mocha.
As experienced Mocha users, we know exactly what Mocha is missing (but we will take feature requests from you too!). 

Suman is designed for powerful and full-featured testing of integrated and asynchronous networked systems,
and is not currently intended to be used for front-end testing. (Your backend testing framework and front-end testing framework should probably be different if you
want them both to be powerful and full-featured). This library gives you features for backend testing that are not available in other testing frameworks since this
library is not constained by the requirement that it must run in the browser. The bottom line is that all the problems with Mocha were fixed by this library.
If you have a special question, concern or requirement don't hesitate to open an issue to see if Suman has you covered.

</i>
