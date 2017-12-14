Pod::Spec.new do |s|
  s.name                    = 'adidasUI'
  s.version                 = '17.2.2.1'
  s.summary                 = 'Mobile adidas UI framework of Adidas components.'
  s.homepage                = 'https://github.com/adimobile/AdidasUI'
  s.license                 = { 
      :type => 'Copyright',
      :text => <<-LICENSE
          © 2014-2016 adidas-Group
      LICENSE
    }
  s.author                  = { "Gomez, Gerardo" => "gerardo.gomez@adidas-group.com" }
  s.source                  = { :git => 'https://github.com/adimobile/AdidasUI.git', :tag => s.version.to_s }
  s.platform                = :ios, '8.0'
  s.requires_arc            = true
  s.ios.vendored_frameworks = 'Pod/adidasUI/'+String(s.version)+'/adidasUI.framework'
  s.xcconfig                = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.frameworks              = 'UIKit'
  s.module_name             = 'adidasUI'
  s.module_map              = "Pod/adidasUI/"+String(s.version)+"/adidasUI.framework/Modules/module.modulemap"
  s.preserve_paths          = "*.framework", "Frameworks/*.framework", "Pod/adidasUI/"+String(s.version)+"/*.framework"
end
