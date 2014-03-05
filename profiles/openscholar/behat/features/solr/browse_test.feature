Feature:
  Testing browse function using apache solr.

  @api
  Scenario: Test basic people browse with apache solr
    Given I visit "john/browse/people"
     Then I should see "filter by taxonomy"
      And I should see the text "People" under "content-inner"
      And I should see "Norma"
     Then I click "Air"
      And I should not see "Norma"

  @api @wip
  Scenario: Test browse with one term not showing categories block
    Given I visit "obama/browse/blogs"
     Then I should not see "filter by taxonomy"
      And I should see the text "Blog" under "content-inner"
      And I should see "Me and michelle obama"

  @api
  Scenario: Test direct browsing of category
    Given I visit "john/browse/gallery/?f[0]=sm_og_vocabulary%3Ataxonomy_term%3A3"
     Then I should see "filter by taxonomy"
      And I should see the text "Media Galleries" under "content-inner"
      And I should not see "John doe biography"
      And I should see "Kittens gallery"
