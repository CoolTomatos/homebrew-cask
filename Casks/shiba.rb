cask "shiba" do
  version "1.2.1"
  sha256 "599dc0db44d82145fb71583cdca6561077d72e532bf132a4b013a360f7b9ba82"

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast "https://github.com/rhysd/Shiba/releases.atom"
  name "Shiba"
  homepage "https://github.com/rhysd/Shiba/"

  app "Shiba-darwin-x64/Shiba.app"
end
