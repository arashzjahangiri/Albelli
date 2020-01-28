inhibit_all_warnings!

def shared_pods
  pod 'SwiftLint', '~> 0.22'
end

target 'albelliTest' do
  use_frameworks!
  platform :ios, '11.0'

  shared_pods
  target 'albelliTestTests' do
    inherit! :search_paths
    # Pods for testing
    shared_pods
    pod 'Sourcery'
    pod 'SwiftyMocky'
  end

end
