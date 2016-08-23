#!/sbin/sh
#
# /system/addon.d/74-brs.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF

EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
   rm -rf /system/app/Apollo
   rm -rf /system/app/BasicDreams
   rm -rf /system/app/Browser
   rm -rf /system/app/CellBroadcastReceiver
   rm -rf /system/app/CMFileManager
   rm -rf /system/app/CMHome
   rm -rf /system/app/CMWallpapers
   rm -rf /system/app/DashClock
   rm -rf /system/app/DSPManager
   rm -rf /system/app/Eleven
   rm -rf /system/app/Email
   rm -rf /system/app/Exchange2
   rm -rf /system/app/Galaxy4
   rm -rf /system/app/Gallery2
   rm -rf /system/app/HoloSpiralWallpaper
   rm -rf /system/app/LiveWallpapers
   rm -rf /system/app/LiveWallpapersPicker
   rm -rf /system/app/LockClock
   rm -rf /system/app/MagicSmokeWallpapers
   rm -rf /system/app/Music
   rm -rf /system/app/NoiseField
   rm -rf /system/app/PartnerBookmarksProvider
   rm -rf /system/app/PhaseBeam
   rm -rf /system/app/PhotoPhase
   rm -rf /system/app/PhotoTable
   rm -rf /system/app/PrintSpooler
   rm -rf /system/app/Provision
   rm -rf /system/app/QuickSearchBox
   rm -rf /system/app/RRWallpapers
   rm -rf /system/app/SoundRecorder
   rm -rf /system/app/Stk
   rm -rf /system/app/Terminal
   rm -rf /system/app/Vending
   rm -rf /system/app/VideoEditor
   rm -rf /system/app/VisualizationWallpapers
   rm -rf /system/app/VoicePlus
   rm -rf /system/app/WhisperPush

   rm -rf /system/priv-app/AudioFX
   rm -rf /system/priv-app/CellBroadcastReceiver
   rm -rf /system/priv-app/CMAccount
   rm -rf /system/priv-app/CMUpdater
   rm -rf /system/priv-app/CyanogenSetupWizard
   rm -rf /system/priv-app/LiveLockScreenService
   rm -rf /system/priv-app/OmniSwitch
   rm -rf /system/priv-app/OneTimeInitializer
   rm -rf /system/priv-app/OTAUpdates
   rm -rf /system/priv-app/PartnerBookmarksProvider
   rm -rf /system/priv-app/PitchBlack
   rm -rf /system/priv-app/Provision
   rm -rf /system/priv-app/QuickSearchBox
   rm -rf /system/priv-app/ScreenRecorder
   rm -rf /system/priv-app/talkback
   rm -rf /system/priv-app/ThemeChooser
   rm -rf /system/priv-app/ThemesProvider
   rm -rf /system/priv-app/Vending

   rm -rf /system/media/audio/notifications
   rm -rf /system/media/audio/ringtones
   rm -rf /system/media/audio/ui
   rm -rf /sdcard/Alarms
   rm -rf /sdcard/Notifications
   rm -rf /sdcard/Podcasts
   rm -rf /sdcard/Ringtones
  ;;
esac
