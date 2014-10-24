api = 2
core = 7.x

;
; Modules
;

; Composer manager
projects[composer_manager][type] = module
projects[composer_manager][subdir] = contrib
projects[composer_manager][version] = 1.7

; Devel
projects[devel][type] = module
projects[devel][subdir] = contrib
projects[devel][version] = 1.5

; Entity index
projects[entity_index][type] = module
projects[entity_index][subdir] = custom
projects[entity_index][download][type] = git
projects[entity_index][download][url] = http://git.drupal.org/project/entity_index.git
projects[entity_index][download][branch] = 7.x-2.x

; Fast forum
projects[fast_forum][type] = module
projects[fast_forum][subdir] = custom
projects[fast_forum][download][type] = git
projects[fast_forum][download][url] = http://git.drupal.org/sandbox/jrbeeman/2073961.git
projects[fast_forum][download][branch] = entity_index

; FCGen
projects[fcgen][type] = module
projects[fcgen][subdir] = custom
projects[fcgen][download][type] = git
projects[fcgen][download][url] = git@github.com:cthos/fcgen.git
projects[fcgen][download][branch] = master

; Migrate
projects[migrate][type] = module
projects[migrate][subdir] = contrib
projects[migrate][version] = 2.x-dev

; User stats
projects[user_stats][type] = module
projects[user_stats][subdir] = custom
projects[user_stats][download][type] = git
projects[user_stats][download][url] = http://git.drupal.org/sandbox/jrbeeman/2314257.git
projects[user_stats][download][branch] = 7.x-2.x

; XHProf
projects[xhprof][type] = module
projects[xhprof][subdir] = contrib
projects[xhprof][version] = 1.0-beta3

;
; Themes
;

; Shiny
projects[shiny][type] = theme
projects[shiny][subdir] = contrib
projects[shiny][version] = 1.6

; Basic
projects[basic][type] = theme
projects[basic][subdir] = contrib
projects[basic][version] = 4.1
