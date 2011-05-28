## Welcome to MegaDriver

With MegaDriver, you can simulate *multiple clients in the same [Cucu](http://en.wikipedia.org/wiki/Cucumber)[mber](https://github.com/cucumber/cucumber) scenario*.

It is a [Capybara](https://github.com/jnicklas/capybara) Driver extended from [Selenium](http://seleniumhq.org/) Capybara Driver with some Cucumber Steps.

## Getting Started

1. *Install* MegaDriver at the command prompt if you haven't yet:

    gem install megadriver
  
2. *Copy* MegaDriver's step definitions to your step definitions directory

    PS: we have in pt-BR besides English

3. *Set up* MegaDriver as your Capybara driver:

  * Add "Capybara.default_driver = :megadriver" to your features/support/env.rb
  * *OR* tag your Cucumber scenarios with @megadriver

## Example

    Feature: Chat

      Scenario: Exchange messages
        Given "Falcon" is in control
        And I am in the chatroom

        Given "Humbert" is in control
        And I am in the chatroom
        When I type "Hi" in the message box
        And press enter

        Given "Falcon" is in control
        Then I should see "Hi"

      Scenario: Other exchange message example
        Given "Falcon" is in control
        And I am in the chatroom

        Given another client is in control
        And I am in the chatroom
        When I type "Hi" in the message box
        And press enter

        Given "Falcon" is in control
        Then I should see "Hi"


## Observation

* You can use your old steps with MegaDriver awesomeness
* *Be careful*: browsers opened by MegaDriver will close only when the process exits
    * You should reuse your client names


## TODO

Make possible to select the browser type


## Thanks

* [Pedro Teixeira](https://github.com/pedroteixeira);
* [Sergio Azevedo](https://github.com/sergiojunior);
* everybody from [Intelie](http://intelie.com.br/).

## Copyright

Copyright (c) 2011 Pedro Menezes. See LICENSE.txt for
further details.
