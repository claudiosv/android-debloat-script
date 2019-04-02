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
   rm -rf rm -rf /system/app/AntHalService
   rm -rf /system/app/BasicDreams
   rm -rf /system/app/Chrome
   rm -rf /system/app/EasterEgg
   rm -rf /system/app/BuiltInPrintService
   rm -rf /system/app/BluetoothMidiService
   rm -rf /system/app/PrintRecommendationService
   rm -rf /system/app/PrintSpooler
   rm -rf /system/app/Stk
   rm -rf /system/app/talkback
   rm -rf /system/app/Terminal
   rm -rf /system/app/webview
   rm -rf /system/app/GoogleLens
   rm -rf /system/app/FaceLock
   rm -rf /system/app/PhotoTable
   rm -rf /system/app/BookmarkProvider

   rm -rf /system/priv-app/MusicFX

   rm -rf /sdcard/Alarms
   rm -rf /sdcard/Notifications
   rm -rf /sdcard/Podcasts
  ;;
esac
