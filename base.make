;;; base.make ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; by Milk Miruku ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Drush Make API version
api = 2

; Core version. Aegir doesn't like just projects[] = "drupal" for some reason.
core = 7.x

projects[drupal][type] = core

;;; Theme is set in .info via Profiler library

;;; General

projects[] = views
projects[] = ctools

projects[] = pathauto
projects[] = token
projects[] = entity


;;; Admistration

projects[] = admin_menu
;projects[] = module_filter - trying without again..
projects[] = views_bulk_operations


;;; Development

projects[] = devel
projects[] = devel_themer
projects[] = drupalforfirebug

projects[] = backup_migrate
projects[backup_migrate_files] = 1.x-dev

projects[] = journal

;;; Settings as code

projects[] = features
projects[] = strongarm


;;; Theming

projects[] = fontyourface
projects[] = block_class
projects[] = compact_forms
projects[] = semanticviews

;;; Security

projects[] = honeypot

;;; Wysiwyg and image handling

projects[wysiwyg][type] = module
projects[jquery_update] = 2.x-dev


;;; Profile and .make

projects[profile_base][type] = profile
projects[profile_base][download][type] = git
projects[profile_base][download][url] = profile_git_location


;;; Libraries

; Profiler simplifies Profiles with the .info
libraries[profiler][download][type] = get
libraries[profiler][download][url] = http://ftp.drupal.org/files/projects/profiler-7.x-2.x-dev.tar.gz
libraries[profiler][destination] = libraries

; TinyMCE is the WYSIWYG frontend lib
libraries[tinymce][download][type] = get
libraries[tinymce][download][url] = https://github.com/downloads/tinymce/tinymce/tinymce_3.3.9.4.zip
libraries[tinymce][destination] = libraries

; Fancybox is the image popup display system
;libraries[fancybox][download][type] = get
;libraries[fancybox][download][url] = http://fancybox.googlecode.com/files/jquery.fancybox-1.3.4.zip
;libraries[fancybox][destination] = libraries
