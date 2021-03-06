cask "bitcoin-core" do
  version "0.20.0"
  sha256 "a6e44b928d9ac04f11d43e920f4971fbdf1e77a8c28f7c14fafdd741ca7bc99f"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  appcast "https://github.com/bitcoin/bitcoin/releases.atom"
  name "Bitcoin Core"
  homepage "https://bitcoincore.org/"

  conflicts_with cask: "bitcoin-xt"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
