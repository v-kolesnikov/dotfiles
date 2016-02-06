{:user  {:plugins  [[lein-ancient "0.6.8"]
                    [venantius/ultra "0.4.0"]
                    [lein-kibit "0.1.2"]
                    [lein-cljfmt "0.3.0"]
                    [lein-vanity "0.2.0"]
                    [lein-cloverage "1.0.6"]
                    [jonase/eastwood "0.2.3"]]
         :dependencies [[org.clojure/tools.trace "0.7.8"]
                        [cljfmt "0.3.0"]
                        [jonase/eastwood "0.2.3"]
                        [slamhound "1.5.5"]]
         :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
