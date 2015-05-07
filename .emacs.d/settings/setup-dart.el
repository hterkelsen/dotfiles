;; Dart settings
(require 'dart-mode)

(setq dart-debug t)
(setq dart-analysis-server-snapshot-path "/usr/lib/google-dartlang/bin/snapshots/analysis_server.dart.snapshot")
(setq dart-enable-analysis-server t)

(provide 'setup-dart)
