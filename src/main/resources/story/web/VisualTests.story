Description: Simple visual tests;

Scenario: Visual test of a page
Meta:
    @skip
When I compare against baseline with `page`

Scenario: Visual test of context element
Given I am on a page with the URL 'https://www.aholddelhaize.com'
When I wait until element located `By.xpath(//p[text()='This website uses cookies'])` appears
When I click on element located `By.id(CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll)`
When I change context to element located `By.xpath(//img[contains(@src, "//media.aholddelhaize.com/media/smibfv0d/adobestock_103314993.jpg")])`
When I compare against baseline with `ah-logo`
