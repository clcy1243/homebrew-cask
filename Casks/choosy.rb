cask 'choosy' do
  if MacOS.version <= :el_capitan
    version '1.1'
    sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'
  else
    version '1.3'
    sha256 'cb1f40df11ac1b52354f4b81367462d2646a6d023c64bafe5022fcec52f796cd'
  end

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  depends_on macos: '>= :yosemite'

  prefpane 'Choosy.prefPane'

  zap trash: [
               '~/Library/Application Support/Choosy',
               '~/Library/Preferences/com.choosyosx.ChoosyPrefPane.plist',
             ]
end
