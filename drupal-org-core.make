api = 2
core = 7.x

; Download Drupal core and apply core patches if needed.
projects[drupal][type] = core
projects[drupal][version] = 7.32

; https://www.drupal.org/node/1158114
projects[drupal][patch][] = "https://www.drupal.org/files/issues/drupal-component-1158114-63.patch"