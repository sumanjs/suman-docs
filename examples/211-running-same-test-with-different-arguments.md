Suman is very flexible and generic and goes out of it's way to support what you want to do, even if it's unlikely.
One thing some users want to do is run the same test file, but with different arguments. This would make a lot of sense.

To run the same test file with different arguments (or different env variables), you will need to create a shell script for each different test.

For example, say you wanted to run `x.test.js` three different ways, then create 3 different shell scripts:


```bash
// x.test.1.sh

#!/usr/bin/env bash
node x.test.js --foo=1
```

```bash
// x.test.2.sh

#!/usr/bin/env bash
node x.test.js --foo=2
```

```bash
// x.test.3.sh

#!/usr/bin/env bash
node x.test.js --foo=3
```


That's all there is to it. Now, there are some circumstances, where you want to run the same exact test, with the same exact
arguments, and just run it concurrently against itself, to check for race conditions, locking correctness, etc.

In order to run the same file more than once per suman run, you will need to use the ```--allow-duplicate-tests``` flag:

```bash
suman --allow-duplicate-tests --concurrency=3 x.test.js x.test.js x.test.js 
```

this will run x.test.js 3 times, in parallel.
