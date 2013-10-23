;;;; package.lisp

;;; See http://www.termsys.demon.co.uk/vtansi.htm for reference

(defpackage #:vt100
  (:use #:cl)
  (:export
   #:query-device-code
   #:report-device-code
   #:query-device-status
   #:report-device-ok
   #:report-device-failure
   #:query-cursor-position
   #:report-cursor-position

   ;; Terminal Setup
   ;; The h and l codes are used for setting terminal/display mode, and vary depending on the implementation. Line Wrap is one of the few setup codes that tend to be used consistently:

   #:reset-device
   #:enable-line-wrap
   #:disable-line-wrap

   ;; Fonts
   ;; Some terminals support multiple fonts: normal/bold, swiss/italic, etc. There are a variety of special codes for certain terminals; the following are fairly standard:

   #:font-set-g0
   #:font-set-g1

   ;; Cursor Control

   #:cursor-home
   #:cursor-up
   #:cursor-down
   #:cursor-forward
   #:cursor-backward
   #:force-cursor-position
   #:save-cursor
   #:unsave-cursor
   #:save-cursor-&-attrs
   #:restore-cursor-&-attrs

   ;; Scrolling

   #:scroll-screen
   #:scroll-screen
   #:scroll-down
   #:scroll-up

   ;; Tab Control

   #:set-tab
   #:clear-tab
   #:clear-all-tabs

   ;; Erasing Text

   #:erase-end-of-line
   #:erase-start-of-line
   #:erase-line
   #:erase-down
   #:erase-up
   #:erase-screen

   ;; Printing
   ;; Some terminals support local printing:

   #:print-screen
   #:print-line
   #:stop-print-log
   #:start-print-log

   ;; Define Key

   #:set-key-definition

   ;; Set Display Attributes

   #:set-attribute-mode

   ;; attributes for set-attribute-mode
   #:reset-all-attributes
   #:bright
   #:dim
   #:underscore
   #:blink
   #:reverse
   #:hidden
   #:foreground-black
   #:foreground-red
   #:foreground-green
   #:foreground-yellow
   #:foreground-blue
   #:foreground-magenta
   #:foreground-cyan
   #:foreground-white
   #:background-black
   #:background-red
   #:background-green
   #:background-yellow
   #:background-blue
   #:background-magenta
   #:background-cyan
   #:background-white))

