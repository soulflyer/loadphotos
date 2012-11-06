Feature: Photographer adds a new shoot directory

  Scenario: Photographer specifies a non existent directory
    When I run `loadphotos nonexistant`
    Then it should fail with:
    """
    No such file or directory
    """

  Scenario: Photographer specifies an existing directory
    Given a directory named "sampledirectory"
    And a file named "sampledirectory/samplephoto" with:
    """
    """
    When I run `loadphotos sampledirectory`
    Then it should pass with:
    """
    Directory added
    """
    And the database should contain a shoot called "sampledirectory"
    And the database should contain a photo called "samplephoto"

  # Scenario: Photogrpher specifies an existing directory that is already in the database
  #   Given a directory named "newdirectory"
  #   And newdirectory is already in the shoots database
  #   When I run `loadphotos newdirectory`
  #   Then it should fail with:
  #   """
  #   newdirectory is already in the database
  #   """
