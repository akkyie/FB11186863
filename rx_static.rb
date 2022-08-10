require 'xcodeproj'

path = 'RxSwift/Rx.xcodeproj'
project = Xcodeproj::Project.open(path)

project.targets.each do |target|
    target.build_configurations.each do |config|
        config.build_settings['MACH_O_TYPE'] ||= 'staticlib'
    end
end

project.save
puts "Project saved: #{path}"