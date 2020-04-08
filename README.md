# Lightweight-Trigger-Framework

A lightweight trigger handler framework for Salesforce Apex.

Complex Apex trigger frameworks getting you down? This is a very lightweight trigger framework to get you started.

Full details and implementation steps can be found on my blog at [http://chrisaldridge.com](http://chrisaldridge.com/triggers/lightweight-apex-trigger-framework/).

## How to implement this trigger pattern

- Copy the ITriggerHandler and TriggerDispatcher classes into your org (in that order). Or you can use the <em>Deploy To Salesforce</em> link below.
- Create an objectTriggerHandler class (such as OpportunityTriggerHandler), which implements the ITriggerHandler interface. Have a look at the AccountTriggerHandler class in this repository for a working example.
- Add logic for the methods you require. For example, if you want some BeforeInsert logic, add it to the BeforeInsert method in your handler class.
- Create a trigger for your object which fires on all events. If you're using MavensMate/Sublime Text, there is a template for this when you create a new trigger. Take a look at the example AccountTrigger in this repository if you're not sure.
- Call the static TriggerDispatcher.Run method from your trigger. Pass it a new instance of your TriggerHandler class as an argument
- Take a tea break. You've earned it.


## Deploy To Salesforce

Clicking the below link will install the classes straight into your Salesforce org. Thanks to [Andrew Fawcett)[http://andyinthecloud.com/2013/09/24/deploy-direct-from-github-to-salesforce/] for the magic tool that does this.

<a href="https://githubsfdeploy.herokuapp.com?owner=ChrisAldridge&repo=Lightweight-Trigger-Framework" target="_blank">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Licence

This project is licensed under the terms of the MIT license.
