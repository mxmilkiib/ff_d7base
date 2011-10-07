;;; miruku_base.make ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; by Milk Miruku ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Drush Make API version
api = 2

; Core version. Aegir doesn't like just projects[] = "drupal" for some reason.
core = 7.x

projects[drupal][type] = core


;;; General ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[] = views
projects[] = ctools

projects[] = pathauto
projects[] = token


;;; Admistration ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[] = admin_menu
projects[] = module_filter


;;; Development ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[] = devel
projects[] = devel_themer
projects[] = drupalforfirebug

projects[] = backup_migrate
projects[backup_migrate_files] = 1.x-dev


;;; Settings as code ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[] = features
projects[] = strongarm


;;; Theming

projects[] = fontyourface
projects[] = block_class

;;; Wysiwyg and image handling ;;;;;;;;;;;;;;;;;;

projects[wysiwyg][type] = module

projects[jquery_update] = 2.x-dev

; projects[miruku_wysiwyg_img_basic][type] = module
; projects[miruku_wysiwyg_img_basic][download][type] = git
; projects[miruku_wysiwyg_img_basic][download][url] = file:///var/aegir/projects/miruku_features/miruku_wysiwyg_img_basic


;;; Theme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[miruku_theme][type] = theme
projects[miruku_theme][download][type] = git
projects[miruku_theme][download][url] = theme_git_location


;;; Profile and .make ;;;;;;;;;;;;;;;;;;;;;;;;;;;

projects[miruku_profile_base][type] = profile
projects[miruku_profile_base][download][type] = git
projects[miruku_profile_base][download][url] = profile_git_location


;;; Libraries ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
