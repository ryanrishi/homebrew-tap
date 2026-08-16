cask "polarclock" do
  version "1.1.0"
  sha256 "31b34afce463cf731e23afa3cd7ce09907e105acfa7e489b5a8711588de51292"

  url "https://github.com/ryanrishi/PolarClock/releases/download/v#{version}/PolarClock.saver.zip"
  name "PolarClock"
  desc "Screen saver that draws the date and time as concentric arcs"
  homepage "https://github.com/ryanrishi/PolarClock"

  depends_on :macos

  screen_saver "PolarClock.saver"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{Dir.home}/Library/Screen Savers/PolarClock.saver"]
  end
end
