#!/usr/bin/env bash

# Path to swayosd-server log file
SERVER_LOG="/run/user/1000/swayosd.log"

# Unique flag file for this instance
FLAG_FILE="/tmp/swayosd_check_$$"
echo "monitoring" > "$FLAG_FILE"

# Background process to monitor server log output
monitor_server_output() {
    timeout 1s tail -f -n 0 "$SERVER_LOG" 2>/dev/null | while IFS= read -r log_line; do
        # Check if we're still monitoring
        [[ ! -f "$FLAG_FILE" ]] && break

        # If server returns a line containing "Unable", execute fallback
        if [[ "$log_line" == *"Unable"* ]]; then
            rm -f "$FLAG_FILE"
            playerctl previous
            break
        fi
    done
}

# Start monitoring in background
monitor_server_output &
MONITOR_PID=$!

# Send command to swayosd-client
swayosd-client --playerctl previous

# Give it time to process and respond
sleep 0.5

# Cleanup
rm -f "$FLAG_FILE" 2>/dev/null
kill "$MONITOR_PID" 2>/dev/null
wait "$MONITOR_PID" 2>/dev/null

exit 0
