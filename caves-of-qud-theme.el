;;; caves-of-qud-theme.el --- A theme weth colors from Caves of Qud

;; Copyright (c) 2023 E Hyland (GNU/GPL Licence)

;; Authors: E Hyland <hello@duien.com>
;; URL: http://github.com/duien/caves-of-qud-theme
;; Version: 1.0
;; ;; Package-Requires: ((autothemer "0.2") (emacs "24"))

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Code:
(require 'autothemer)

(autothemer-deftheme
 caves-of-qud "A theme with colors from Caves of Qud"
 ((((class color) (min-colors #xFFFFFF)))

  (crimson "#a64a2e")
  (scarlet "#d74200")
  (persimmon "#f15f22")
  (orange "#e99f10")
  (brown "#98875f")
  (yellow "#cfc041")
  (dark-green "#009703")
  (green "#00c420")
  (dark-blue "#0048bd")
  (blue "#0096ff")
  (dark-cyan "#40a4b9")
  (cyan "#77bfcf")
  (purple "#b154cf")
  (magenta "#da5bd6")
  (deepest "#0D3433")
  (viridian "#0f3b3a")
  (darker-gray "#155352")
  (dark-gray "#3C716E")
  (gray "#638E8B")
  (light-gray "#8AACA7")
  (lighter-gray "#b1c9c3")
  (white "#ffffff"))

 ((default (:background viridian :foreground lighter-gray))
  (bold (:weight 'bold))
  (italic (:slant 'italic))

  ;;; Editor UI Elements

  ;; mode line
  (mode-line (:background dark-gray :foreground viridian))
  (mode-line-inactive (:background deepest :foreground darker-gray))
  (mode-line-highlight (:inverse-video t))
  (header-line (:background darker-gray))
  ;; tab-bar
  (tab-bar (:background deepest :foreground darker-gray))
  (tab-bar-tab (:foreground light-gray :background darker-gray))
  (tab-bar-tab-inactive (:inherit 'tab-tar))
  ;; line numbers
  (line-number (:foreground darker-gray))
  (line-number-minor-tick (:foreground dark-gray))
  (line-number-major-tick (:foreground dark-gray :inherit 'bold))
  (line-number-current-line (:foreground viridian :background darker-gray :inherit 'bold))
  ;; dividers
  (fringe (:inherit 'default))
  (vertical-border (:foreground dark-gray))
  (internal-border (:background deepest))
  (fill-column-indicator (:foreground darker-gray))

  ;;; Font Lock Faces
  (font-lock-comment-face (:foreground dark-cyan :slant 'italic))
  (font-lock-comment-delimiter-face (:inherit 'font-lock-comment-face))
  (font-lock-string-face (:foreground green :slant 'italic))
  (font-lock-keyword-face (:foreground persimmon))
  (font-lock-builtin-face (:foreground brown))
  (font-lock-constant-face (:foreground yellow))
  (font-lock-function-name-face (:foreground magenta))
  (font-lock-variable-name-face (:foreground blue))
  (font-lock-type-face (:foreground cyan))

  ;;; Basic Faces
  (highlight (:background dark-blue))
  (shadow (:foreground dark-cyan))
  (link (:foreground blue :underline t))
  (link-visited (:foreground purple :underline t))

  ;;; Package-specific faces

  ;; Diff markers in fringe
  (diff-hl-change (:background purple :foreground purple))
  (diff-hl-insert (:background dark-green :foreground dark-green))
  (diff-hl-delete (:background crimson :foreground crimson))

  ;; Vue/MMM
  (mmm-default-submode-face (:background 'unspecified))

  ;; Nano Modeline
  (nano-modeline-active-status-** (:background yellow :inherit 'nano-modeline-active))
  (nano-modeline-active-status-RO (:background crimson :inherit 'nano-modeline-active))
  (nano-modeline-active-status-RW (:background dark-cyan :inherit 'nano-modeline-active))

  ;; Org-Mode
  (org-document-title (:foreground white :height 1.25))
  (org-level-1 (:foreground white :background darker-gray :extend t :inherit 'bold :height 1.125))
  ;; (org-level-1 (:foreground purple :inherit 'bold :height 1.125))
  (org-level-2 (:foreground white :inherit 'bold))
  (org-level-3 (:inherit 'org-level-2))
  (org-level-4 (:inherit 'org-level-2))
  (org-level-5 (:inherit 'org-level-2))
  (org-level-6 (:inherit 'org-level-2))
  (org-level-7 (:inherit 'org-level-2))
  (org-level-8 (:inherit 'org-level-2))
  (org-block (:background deepest))
  (org-hide (:foreground viridian))
  (org-block-begin-line (:foreground dark-gray))
  (org-block-end-line (:inherit 'org-block-begin-line))
  (org-ellipsis (:inherit 'shadow :background viridian :underline nil :weight 'normal)) ;; TODO weight
  (org-headline-todo (:weight 'reset :slant 'reset :foreground lighter-gray))
  (org-headline-done (:inherit '(italic) :weight 'reset :foreground dark-gray))
  (org-todo (:foreground viridian :background dark-gray :inherit 'bold))
  (org-done (:foreground dark-gray :background deepest :weight 'reset))
  (org-superstar-leading (:foreground darker-gray))
  (org-superstar-header-bullet (:weight 'reset))

  ;; Magit
  ;; (magit-blame-date nil)
  ;; (magit-blame-name nil)
  ;; (magit-blame-hash nil)
  ;; (magit-blame-summary nil)
  ;; (magit-blame-heading (:weight 'normal :slant 'normal :extend t :inherit 'magit-blame-highlight))
  ;; (magit-blame-dimmed (:weight 'normal :slant 'normal :inherit 'magit-dimmed))
  ;; (magit-blame-margin (:weight 'normal :slant 'normal :inherit 'magit-blame-highlight))
  ;; (magit-blame-highlight (:extend t :foreground white :background deepest))
  ;; (magit-reflog-other (:foreground cyan))
  ;; (magit-reflog-remote (:foreground cyan))
  ;; (magit-reflog-cherry-pick (:foreground green))
  ;; (magit-reflog-rebase (:foreground magenta))
  ;; (magit-reflog-reset (:foreground scarlet))
  ;; (magit-reflog-checkout (:foreground dark-blue))
  ;; (magit-reflog-merge (:foreground green))
  ;; (magit-reflog-amend (:foreground magenta))
  ;; (magit-reflog-commit (:foreground green))
  ;; (magit-bisect-bad (:foreground crimson))
  ;; (magit-bisect-skip (:foreground orange))
  ;; (magit-bisect-good (:foreground dark-green))
  ;; (magit-sequence-exec (:inherit 'magit-hash))
  ;; (magit-sequence-onto (:inherit 'magit-sequence-done))
  ;; (magit-sequence-done (:inherit 'magit-hash))
  ;; (magit-sequence-drop (:foreground crimson))
  ;; (magit-sequence-head (:foreground cyan))
  ;; (magit-sequence-part (:foreground yellow))
  ;; (magit-sequence-stop (:foreground lighter-gray))
  ;; (magit-sequence-pick (:inherit 'default))
  ;; (magit-filename (:weight 'normal))
  ;; (magit-cherry-equivalent (:foreground magenta))
  ;; (magit-cherry-unmatched (:foreground cyan))
  ;; (magit-signature-error (:foreground cyan))
  ;; (magit-signature-revoked (:foreground purple))
  ;; (magit-signature-expired-key (:inherit 'magit-signature-expired))
  ;; (magit-signature-expired (:foreground orange))
  ;; (magit-signature-untrusted (:foreground light-gray))
  ;; (magit-signature-bad (:weight 'bold :foreground scarlet))
  ;; (magit-signature-good (:foreground green))
  ;; (magit-keyword-squash (:inherit 'font-lock-warning-face))
  ;; (magit-keyword (:inherit 'font-lock-string-face))
  ;; (magit-refname-pullreq (:inherit 'magit-refname))
  ;; (magit-refname-wip (:inherit 'magit-refname))
  ;; (magit-refname-stash (:inherit 'magit-refname))
  ;; (magit-refname (:foreground lighter-gray))
  ;; (magit-head (:inherit 'magit-branch-local))
  ;; (magit-branch-warning (:inherit 'warning))
  ;; (magit-branch-upstream (:slant 'italic))
  ;; (magit-branch-current (:box 1 :inherit 'magit-branch-local))
  ;; (magit-branch-local (:foreground cyan))
  ;; (magit-branch-remote-head (:box 1 :inherit 'magit-branch-remote))
  ;; (magit-branch-remote (:foreground lighter-gray))
  ;; (magit-tag (:foreground yellow))
  ;; (magit-hash (:foreground dark-gray))
  ;; (magit-dimmed (:foreground gray))
  ;; (magit-header-line-key (:inherit 'font-lock-builtin-face))
  ;; (magit-header-line (:inherit 'magit-section-heading))
  ;; (magit-header-line-log-select (:inherit 'bold))
  ;; (magit-log-date (:weight 'normal :slant 'normal :foreground lighter-gray))
  ;; (magit-log-author (:weight 'normal :slant 'normal :foreground persimmon))
  ;; (magit-log-graph (:foreground lighter-gray))
  ;; (magit-diffstat-removed (:foreground crimson))
  ;; (magit-diffstat-added (:foreground dark-green))
  ;; (magit-diff-whitespace-warning (:inherit 'trailing-whitespace))
  ;; (magit-diff-context-highlight (:extend t :foreground lighter-gray :background deepest))
  ;; (magit-diff-their-highlight (:inherit 'magit-diff-added-highlight))
  ;; (magit-diff-base-highlight (:extend t :foreground yellow :background brown))
  ;; (magit-diff-our-highlight (:inherit 'magit-diff-removed-highlight))
  ;; (magit-diff-removed-highlight (:extend t :foreground white :background crimson))
  ;; (magit-diff-added-highlight (:extend t :foreground lighter-gray :background dark-gray))
  ;; (magit-diff-context (:extend t :foreground lighter-gray))
  ;; (magit-diff-their (:inherit 'magit-diff-added))
  ;; (magit-diff-base (:extend t :foreground white :background brown))
  ;; (magit-diff-our (:inherit 'magit-diff-removed))
  ;; (magit-diff-removed (:extend t :foreground white :background crimson))
  ;; (magit-diff-added (:extend t :foreground lighter-gray :background darker-gray))
  ;; (magit-diff-conflict-heading (:inherit 'magit-diff-hunk-heading))
  ;; (magit-diff-lines-boundary (:extend t :inherit 'magit-diff-lines-heading))
  ;; (magit-diff-lines-heading (:extend t :foreground lighter-gray :background crimson :inherit 'magit-diff-hunk-heading-highlight))
  ;; (magit-diff-revision-summary-highlight (:inherit 'magit-diff-hunk-heading-highlight))
  ;; (magit-diff-revision-summary (:inherit 'magit-diff-hunk-heading))
  ;; (magit-diff-hunk-region (:extend t :inherit 'bold))
  ;; (magit-diff-hunk-heading-selection (:extend t :foreground persimmon :inherit 'magit-diff-hunk-heading-highlight))
  ;; (magit-diff-hunk-heading-highlight (:extend t :foreground white :background dark-gray))
  ;; (magit-diff-hunk-heading (:extend t :foreground white :background deepest))
  ;; (magit-diff-file-heading-selection (:extend t :foreground persimmon :inherit 'magit-diff-file-heading-highlight))
  ;; (magit-diff-file-heading-highlight (:extend t :inherit 'magit-section-highlight))
  ;; (magit-diff-file-heading (:weight 'bold :extend t))
  ;; (magit-mode-line-process-error (:inherit 'error))
  ;; (magit-mode-line-process (:inherit 'mode-line-emphasis))
  ;; (magit-process-ng (:foreground scarlet :inherit 'magit-section-heading))
  ;; (magit-process-ok (:foreground green :inherit 'magit-section-heading))
  ;; (magit-section-child-count nil)
  ;; (magit-section-heading-selection (:extend t :foreground persimmon))
  ;; (magit-section-secondary-heading (:weight 'bold :extend t))
  ;; (magit-section-heading (:weight 'bold :extend t :foreground yellow))
  ;; (magit-section-highlight (:extend t :background deepest))

  ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'caves-of-qud)
