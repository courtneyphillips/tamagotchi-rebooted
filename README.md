#Tamagotchi

---

## Synopsis

Tamagotchi built by [Chris Sefkin](https://github.com/c-sefkin), [Erin Collins](https://github.com/theerincollins), [Debbie Balbo](https://github.com/dbalbo) and [Courtney Phillips](https://github.com/courtneyphillips).  Crafted as part of the Spring 2015 Ruby course curriculum at [Epicodus](https://www.epicodus.com/).

## Motivation

Tamagotchi was built as a cumulative exercise in the Ruby skills developed at Epicodus, including methods, class creation, SQL, ActiveRecord, Git

## Links

  - Heroku: www.samplelinkhere.com
  - GitHub: www.samplelinkhere.com

## Installation

#### Gems

Tamagotchi uses the following gems:

Development:
  - Capybara
  - Sinatra
  - ActiveRecord

Test:
  - RSpec
  - Pry
  - Shoulda-Matchers
  - Shoulda-callback-matchers

To install, run `$ gem install bundle` in the command line.

#### Databases

Additionally, Tamagotchi utilizes databases via ActiveRecord. Should you clone this repository, simply do the following to establish corresponding databases for your own use:

1. Launch the Postgres server by running `$ postgres` in the terminal.
2. Navigate to the project folder and run `$ rake db:create`.
3. Run `$ rake db:migrate` to migrate the changes detailed in db into the database.

## Tests

Method and integration tests for Tamagotchi utilize RSpec, Capybara, and Shoulda-Matchers. Simply run `$ gem install bundle`, as directed above, to download all necessary testing gems.

## Contribute

  - Issue Tracker: https://github.com/username/PROJECTNAME/issues
  - Source Code: https://github.com/username/PROJECTNAME
  - Pull Requests: https://github.com/username/PROJECTNAME/pulls

## Development Roadmap

Tamagotchi is still a work in progress. The following are features, fixes and tweaks to be implemented as the project develops. Any additional suggestions can be contributed via the Issue Tracker above.

  - Utilization of JavaScript
  - Other cool stuff

## License

The MIT License (MIT)

Copyright (c) 2015 [Chris Sefkin](https://github.com/c-sefkin), [Erin Collins](https://github.com/theerincollins), [Debbie Balbo](https://github.com/dbalbo) and [Courtney Phillips](https://github.com/courtneyphillips)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---
