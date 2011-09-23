;;; miruku_d7_core.make ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; by Milk Miruku ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Drush Make API version
api = 2

; Core version. Aegir doesn't like just projects[] = "drupal" for some reason.
core = 7.x

projects[drupal][type] = core


;;; Theme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; projects[] = terrain

projects[miruku_theme][type] = theme
projects[miruku_theme][download][type] = git
projects[miruku_theme][download][url] = theme_git_location


;;; Profile and .make ;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[miruku_profile_base][type] = profile
projects[miruku_profile_base][download][type] = git
projects[miruku_profile_base][download][url] = profile_git_location


; Profiler simplifies Profiles with the .info
libraries[profiler][download][type] = get
libraries[profiler][download][url] = http://ftp.drupal.org/files/projects/profiler-7.x-2.x-dev.tar.gz
libraries[profiler][destination] = libraries

