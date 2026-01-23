cask "polarclock" do
  version "1.0.0"
  sha256 "db89c51697bc4400fe60ebcca6f5964a789f03b9744344b1ce1c1eeca93942a9"

  url "https://github.com/ryanrishi/PolarClock/releases/download/v#{version}/PolarClock.saver.zip"
  name "PolarClock"
  desc "Polar clock screen saver for macOS"
  homepage "https://github.com/ryanrishi/PolarClock"

  screen_saver "PolarClock.saver"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{Dir.home}/Library/Screen Savers/PolarClock.saver"]
  end
end
