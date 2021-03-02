cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.0.1"
  sha256 "eb3467c08d66a5c80376bbe3dd1f63e99914cf9c9658d29548cfd130cc2058e4"

  name "VirtualC64"
  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/#{name}_#{version}.app.zip"
  homepage "https://dirkwhoffmann.github.io/virtualc64"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "#{name}_#{version}.app"
end
