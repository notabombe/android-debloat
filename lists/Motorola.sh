#!/usr/bin/env bash

declare -a motorola=(
	# I NEVER HAD A MOTOROLA DEVICE ON HAND. 
	# I did some intensive searches on the web to find a list and I try my best to document it but I need Motorola users to really improve it.
	# I use [MORE INFO NEEDED] tag as a marker.

	"android.autoinstalls.config.motorola.layout" # [MORE INFO NEEDED]
	# Device configuration for Motorola 
	# AutoInstall allows manufacturers to force installation of apps.
	# Just a layout ? 

	"com.lenovo.lsf.user" # [MORE INFO NEEDED]
	# Lenovo ID 
	# Lenovo ID (Lenovo account) gives you access to additional or exclusive features directly from Lenovo and its partners. 
	# I guess this package enables you to log in to lenovo account.
	# lsf = Lenovo Service Framework

	"com.lmi.motorola.rescuesecurity"
	# Rescue Security by LogMeIn (https://www.logmeinrescue.com/)
	# Remote support app. Motorola made a partnership with LogMeIn : https://www.logmeinrescue.com/customer-stories/motorola
	# It enables motorola representatives to login and remotely control the device for technical support.

	"com.motorola.android.fmradio"
	# FM Radio Service 
	# Seems to have been replaced by "com.motorola.fmplayer"

	"com.motorola.android.jvtcmd"
	# Java Tcmd Helper
	# tcmd = commandes types. Seems to be a tools wich help find Java commands types.
	# Useless for normal user.

	"com.motorola.android.nativedropboxagent"
	# Native DropBox Agent.
	# It is not related to Cloud Dropbox company but to Android logging. It is used during development.
	# https://stackoverflow.com/questions/4434192/dropboxmanager-use-cases

	"com.motorola.android.providers.chromehomepage" # [MORE INFO NEEDED]
	# Seems to only prodive the "home" symbol in Chrome.
	# https://forum.xda-developers.com/android/apps-games/app-chrome-homepage-t3695804

	# "com.motorola.android.providers.settings"
	# I'm not sure about this one. Sometimes, settings providers cause bootloop.
	# REMINDER : Content providers help an application manage access to data stored by itself, stored by other apps, 
	# and provide a way to share data with other apps. They encapsulate the data, and provide mechanisms for defining data security
	# Source : https://developer.android.com/guide/topics/providers/content-providers.html

	"com.motorola.android.provisioning"
	# OMA Client Provisioning
	# It is a protocol specified by the Open Mobile Alliance (OMA).
	# It is used by carrier to send "configuration SMS" which can setup network settings (such as APN).
	# In my case, it was automatic and I never needed configuration messages. I'm pretty sure that in France this package is useless.
	# Maybe it's useful if carriers change their APN... but you still can change it manually, it's not difficult.
	#
	# Npte : These special "confirguration SMS" can be abused : 
	# https://www.zdnet.fr/actualites/les-smartphones-samsung-huawei-lg-et-sony-vulnerables-a-des-attaques-par-provisioning-39890045.htm
	# https://www.csoonline.com/article/3435729/sms-based-provisioning-messages-enable-advanced-phishing-on-android-phones.html

	"com.motorola.android.settings.diag_mdlog"
	# diag_mdlog is a small proprietary Qualcomm program which can store DIAG logs on the filesystem.

	"com.motorola.android.settings.modemdebug" # [MORE INFO NEEDED]
	# Provide modem debug settings menu ? 

	"com.motorola.appdirectedsmsproxy" # [MORE INFO NEEDED]
	# An Application directed SMS (or rather a Port directed SMS) is an SMS directed to a specific port. 
	# Apps need to listen to this port to get the SMS message.
	# I don't know if this package allows port directed SMS or if it just provide a proxy feature.

	"com.motorola.audiofx"
	# Audio effects
	# Provide features like Equalizer, Surround sound...

	"com.motorola.bach.modemstats"
	# ModemStatsService
	# Statistics and events logs from the modem activity.

	"com.motorola.brapps"
	# Motorola App Box (https://play.google.com/store/apps/details?id=com.motorola.brapps)
	# Offers you a selection of applications developed by Brazilians and also apps selected for you.

	"com.motorola.bug2go"
	# Bugs reporting app that sends info about crash report.

	##### CCC #####
	# ccc = China Compulsory Certification. It is a mandatory compliance requirement for products sold in China.

	"com.motorola.ccc.devicemanagement"
	# Mobile Device Management (MDM) allows company’s IT department to reach inside your phone in the background, allowing them to ensure 
	# your device is secure, know where it is, and remotely erase your data if the phone is stolen.
	# You should NEVER install a MDM tool on your phone. Never.
	# https://onezero.medium.com/dont-put-your-work-email-on-your-personal-phone-ef7fef956c2f
	# https://blog.cdemi.io/never-accept-an-mdm-policy-on-your-personal-phone/

	"com.motorola.ccc.mainplm"
	# plm = Product Lifecycle Management ? 

	"com.motorola.ccc.notification"
	# Motorola Notifications (https://play.google.com/store/apps/details?id=com.motorola.ccc.notification)
	# If you opt-in, it sends periodic product-related information, including notifications on software updates, tips & tricks, survey and information
	# about new Motorola products and services.

	"com.motorola.contacts.preloadcontacts"
	# Preloaded Contacts
	# Provides contacts preset by carriers.

	"com.motorola.demo"
	# Moto Demo Mode 
	# Enable retail demonstration mode.
	# https://source.android.com/devices/tech/display/retail-mode

	"com.motorola.demo.env"
	# Needed for Moto Demo Mode
	# env = environment

	"com.motorola.easyprefix"
	# Motorola Easy Prefix (https://play.google.com/store/apps/details?id=com.motorola.easyprefix)
	# Auto add CSP (Service Provider code) prefix to your phone when you're abroad.
	# https://en.wikipedia.org/wiki/List_of_country_calling_codes
	# 
	# This seems to not work correctly and it's generally not a good idea to call home (via GSM) when you're abroad.
	# It's better and cheaper to use chat apps like Signal/Wire)
	
	"com.motorola.email"
	# Moto Email (https://play.google.com/store/apps/details?id=com.motorola.email)

	"com.motorola.fmplayer"
	# FM Radio (https://play.google.com/store/apps/details?id=com.motorola.fmplayer)
	# Radio app

	"com.motorola.frameworks.singlehand"
	# Provide the Single/One hand mode
	# I don't know why frameworks appears in the package name because it's not only the framework.
	# https://support.motorola.com/us/en/documents/MS116403/

	"com.motorola.genie"
	# Device Help (https://play.google.com/store/apps/details?id=com.motorola.genie)
	# Provide support features.

	"com.motorola.lifetimedata"
	# Not 100% sure but it's most likely the Total Call Timer or more generally it handles info like the date of manufacture of your device,
	# usage time since first boot etc... 
	# Total Call Timer gives you the time you spent calling.
	# I don't know how to access to these info. It's surely a hidden menu (and may be accessible through the dialer with a special code)

	"com.motorola.moto"
	# Moto (https://play.google.com/store/apps/details?id=com.motorola.moto)
	# App providing Moto Actions, Moto Display, and other feature families that let you customize the way you interact with your device. 
	# I don't really understand because Moto Actions is another app (https://play.google.com/store/apps/details?id=com.motorola.actions)

	"com.motorola.motocare" # [MORE INFO NEEDED]
	# Moto Care was renamed in "Moto Help" and then in "Device Help"
	# Provide support features.
	# https://mobile.softpedia.com/blog/Moto-Care-App-Gets-Updated-Now-Called-Motorola-Help-432827.shtml
	# However you can both have com.motorola.genie (Device Help) and this package so it's strange. 

	"com.motorola.motocare.internal" # [MORE INFO NEEDED]
	# Core stuff for the package above I guess.
	
	"com.motorola.motocit"
	# CQATest
	# CQA = Custom Quality Assurance
	# Hidden menu (accessible by typing *#*#2486#*#* in the Moto Dialer) which lets you run hardware tests.

	"com.motorola.motodisplay"
	# Moto Display (https://play.google.com/store/apps/details?id=com.motorola.motodisplay)
	# Displays notifications with the screen off (it's like the Always On Display feature from Samsung)
	# https://support.motorola.com/uk/en/solution/ms108519

	"com.motorola.msimsettings"
	# Dual SIM Settings
	# Provides Dual SIM feature.

	"com.motorola.paks" # [MORE INFO NEEDED]
	# My Q Paks ? 
	# Third-party application bundles
	# https://www.financialmirror.com/2007/10/31/motorola-packs-moto-q-9h-global-smart-device-with-third-party-applications/

	"com.motorola.programmenu"
	# Programming Menu
	# Hidden menu (accessible by typing  ##7764726 in the dialer) providing additionnal features for developers.

	"com.motorola.ptt.prip"
	# Prip (https://play.google.com/store/apps/details?id=com.motorola.ptt.prip)
	# Push-To-Talk app. Allows to you send calls over any wireless carrier’s 3G or 4G networks or a WiFi connection.
	# It offers unlimited calling between other users and Nextel phone owners, rather than universal calling credit, 
	# and works on a monthly subscription basis.
	# https://prip.me/#get

	"com.motorola.setup" # [MORE INFO NEEDED]
	# Related to Motorola Account setup (only during first boot ?)
	# Safe to remove according to xda users.

	"com.motorola.slpc_sys"
	# Motorola Slpc System
	# Would be weird if it's not related to Motorola Modality Services (https://play.google.com/store/apps/details?id=com.motorola.slpc)
	# Helps your Motorola phone respond more intelligently to motion, phone orientation (e.g. face up/down) and stowed state (e.g in/out-of-pocket).
	# Has a noticeable impact on battery ? (https://forum.xda-developers.com/moto-x-2014/help/location-modality-services-battery-t2982752)
	# FYI : It uses location services.

	"com.motorola.timeweatherwidget"
	# Provides time/weather widget on the home screen.
	# https://en.wikipedia.org/wiki/Widget

	"com.motorola.timezonedata"
	# Time Zone Data (https://play.google.com/store/apps/details?id=com.motorola.timezonedata)
	# Update timezone when traveling to foreign countries.
	# According to reviews this app works really badly.


	################## ADVANCED DEBLOAT ################

	#"com.motorola.camera2"
	# Moto Camera 2 (https://play.google.com/store/apps/details?id=com.motorola.camera)

	"com.motorola.actions"
	# Moto Actions (https://play.google.com/store/apps/details?id=com.motorola.actions)
	# Allows you to perform specific gestures to perform certain tasks.

	#"com.motorola.carriersettingsext" # [MORE INFO NEEDED]
	# Carrier settings ext
	# ext = extension ?
	# Carrier settings contains APN settings for instance.
	# I couldn't find any info about this package. I don't think it's safe to remove.

	#"com.motorola.ccc.ota"
	# Motorola Update Services
	# Provide OTA system updates.
	# OTA (Over-The-Air) updates allow manufacturers to remotely install new software updates, features and services.

	#"com.motorola.comcast.settings.extensions" # [MORE INFO NEEDED]
	# Most likely provides a special settings menu for Comcast stuff.
	# I think it's safe to delete given it's surely a comcast addon but I need confirmation. 
	# I think it's installed on Xfinity branded phones.

	#"com.motorola.comcastext" # [MORE INFO NEEDED]
	# Provide special (useless) features from Comcast ?
	# See above.

	# "com.motorola.entitlement"
	# Enable WiFi tethering/hotspot functionality. 
	# What you can do is preventing the phone from notifying the carrier about when you use hotspot. It will bypass mobile carriers tethering restrictions.
	# From an ADB shell : settings put global tether_dun_required 0

	#"com.motorola.faceunlock"
	# Moto Face Unlock (https://play.google.com/store/apps/details?id=com.motorola.faceunlock)
	# Lets you conveniently unlock your device by simply looking at the display. 
	# Note : Using face unlock is a really bad idea (security and privacy wise) : 
	# https://www.ubergizmo.com/2017/03/galaxy-s8-facial-unlock-photograph/
	# https://www.kaspersky.com/blog/face-unlock-insecurity/21618/
	# https://www.freecodecamp.org/news/why-you-should-never-unlock-your-phone-with-your-face-79c07772a28/

	#"com.motorola.faceunlocktrustagent"
	# Motorola Face Unlock Agent
	# Trust agent is a service that notifies the system about whether it believes the environment of the device to be trusted.
	# The exact meaning of 'trusted' is up to the trust agent to define. 
	# The system lockscreen listens for trust events, it can change its behaviour based on the trust state of the current user
	# (e.g detection of a trusted face)
	# https://nelenkov.blogspot.com/2014/12/dissecting-lollipops-smart-lock.html

	#"com.motorola.imagertuning_ocean"
	# Imager Tuning (https://play.google.com/store/apps/details?id=com.motorola.imagertuning_athene)
	# ocean is a model name of a Motorola G7.
	# It's supposed to improve color, sharpness, noise when taking photo with the stock camera. 
	# The results are not that good (see reviews). I let you see the difference with/without the camera tuning.

	#"com.motorola.invisiblenet" # [MORE INFO NEEDED]
	# Invisible net
	# Hard to find info about this one. I only found something from a patent (http://www.freepatentsonline.com/5469497.html).
	# It's a Google patent and Google owned Motorola so maybe it is that's it.
	# It seems to implement the ICMS local area network. ICMS means Interactive Call Management Subsystems.
	# I couldn't find more info about ICMS. It's strange that this is so badly documented. 

	#"com.motorola.launcher3"
	# Motorola system Launcher
	# It's basically the home screen, the way icons apps are organized and displayed.
	# DON'T REMOVE THIS IF YOU DIDN'T INSTALL ANOTHER LAUNCHER !

	#"com.motorola.launcherconfig" # [MORE INFO NEEDED]
	# Config file of the motorola launcher ? 
	# I guess launcher will not work anymore if you delete this package. Can someone confirm ?
	# DON'T REMOVE THIS IF YOU DIDN'T INSTALL ANOTHER LAUNCHER !

	#"com.motorola.motosignature.app" # [MORE INFO NEEDED]
	# Maybe it's the service which check whether app's signature is trusted or not.
	# Not useful if you know what you're doing (malwares apps are in PlayStore. This package will not protect you)
	# Maybe I'm mistaken and this package does not handles app signatures. Can someone test it.

	#"com.motorola.nfc"
	# Support for NFC protocol.

	#"com.motorola.omadm.service" # [MORE INFO NEEDED]
	# Carrier Provisioning Service
	# Provisioning involves the process of preparing and equipping a network to allow it to provide new services to its users.
	# OMADM  = OMA Device Management
	# Basically, it handles configuration of the device (including first time use), enabling and disabling features provided by carriers.
	# https://en.wikipedia.org/wiki/OMA_Device_Management
	# Use case seems very limited : https://www.androidpolice.com/2015/03/10/android-5-1-includes-new-carrier-provisioning-api-allows-carriers-easier-methods-of-setting-up-services-on-devices-they-dont-control/
	# Can someone test to remove it ? :)

	#"com.motorola.pgmsystem2" # [MORE INFO NEEDED]
	# PGM System
	# I didn't find info about this package. 
	# For Me PGM = Peak Gate Power (for MOSFET transistor) but I'm not convinced it has this meaning here.

	#"com.motorola.systemserver"
	# ???
	# At first sight it seems not safe to remove. But maybe it's only needed for Motorola apps.

	#"com.motorola.VirtualUiccPayment"
	# Virtual UICC Payment
	# UICC stands for Universal Integrated Circuit Card. It is a new generation SIM (Subscriber Identification Module) which can have multiple applications on it.
	# I guess this package provides support for NFC payement.
	# Note: The term SIM is widely used in the industry and especially with consumers to mean both SIMs and UICCs.
	# https://www.justaskgemalto.com/us/what-uicc-and-how-it-different-sim-card/

	)

############# DO NOT REMOVE THIS (will prevent core stuff to work) ###################

#"com.motorola.config.wifi" # [MORE INFO NEEDED]
# WPA config App
# I'm pretty sure it's needed to connect the device to wifi network but maybe not... can someone test ? 

#"com.motorola.coresettingsext" # [MORE INFO NEEDED]
# Core Settings ext
# ext = extension 
# I don't know but it's rarely a good idea to remove "core" stuff. I'm curious tho. Can someone delete it to see what happens ?