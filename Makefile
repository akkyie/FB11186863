.PHONY: rx_static
rx_static:
	bundle install
	bundle exec ruby rx_static.rb


.PHONY: test13
test13: XCODE ?= /Applications/Xcode-13.4.1.app
test13: rx_static
	sudo xcode-select -s $(XCODE)
	xcodebuild clean test \
		-scheme TryLink \
		-workspace TryLink.xcworkspace \
		-destination 'name=iPhone 13' \
	| tee test13.log

.PHONY: test14
test14: XCODE ?= /Applications/Xcode-14.0.0-Beta.5.app
test14: rx_static
	sudo xcode-select -s $(XCODE)
	xcodebuild clean test \
		-scheme TryLink \
		-workspace TryLink.xcworkspace \
		-destination 'name=iPhone 13' \
	| tee test14.log