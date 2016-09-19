Pod::Spec.new do |s|
  s.name        = 'RETableViewExtendedManager'
  s.version     = '1.7.0'
  s.authors     = { 'Unknown' => 'unknown' }
  s.homepage    = 'https://github.com/ferrumblood/RETableViewManager'
  s.summary     = 'Powerful data driven content manager for UITableView.'
  s.source      = { :git => 'https://github.com/ferrumblood/RETableViewManager.git',
                    :tag => s.version.to_s}
  s.license     = { :type => "MIT", :file => "LICENSE" }

  s.platform = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'RETableViewExtendedManager'

  s.subspec 'Cells' do |ss|
      ss.source_files = 'RETableViewExtendedManager/Cells'
  end

  s.subspec 'Items' do |ss|
      ss.source_files = 'RETableViewExtendedManager/Items'
  end

  s.public_header_files = 'RETableViewExtendedManager/Cells/*.h', 'RETableViewExtendedManager/*.h', 'RETableViewExtendedManager/Items/*.h'
  s.resource_bundle = { 'RETableViewExtendedManager' => 'RETableViewExtendedManager/Resources/*' }
  s.preserve_paths = 'RETableViewExtendedManager/Resources'

  s.ios.deployment_target = '7.0'

  s.dependency 'REFormattedNumberField', '~> 1.1.5'
  s.dependency 'REValidation', '~> 0.1.4'
end
