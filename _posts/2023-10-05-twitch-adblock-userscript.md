---
layout: post
title: Twitch Ad Block Userscript
date: 2023-10-05 12:45 +0800
categories: note
---
# Requirement

- Userscript extension :
	- Firefox : [Greasemonkey](https://addons.mozilla.org/zh-TW/firefox/addon/greasemonkey/)
	- Chrome/Edge : [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)

# Go

- Source - Userscript : [pixeltris/TwitchAdSolutions](https://github.com/pixeltris/TwitchAdSolutions)
![images/2023-10-05-twitch-adblock-userscript-img1.png](/images/2023-10-05-twitch-adblock-userscript-img1.png)
- Quick Link : [userscript](https://github.com/pixeltris/TwitchAdSolutions/raw/master/video-swap-new/video-swap-new.user.js)

# Why

- Fix 
	- Twitch Network Error #2000 and View Live Streams
		- CDN and Ad cache incorrect. (by Block the Ad)
	- Low frame-rate and resolution.