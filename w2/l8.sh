#!/bin/bash
##########################
#Problem: Accept a service name. Use `systemctl is-active` and `systemctl is-enabled` to categorize the service into: ACTIVE_ENABLED, ACTIVE_DISABLED, INACTIVE_ENABLED, or INACTIVE_DISABLED.
##########################

service="${1:?ERROR:ENter a service name}"
IS_ACTIVE="$(systemctl is-active "$service")"
IS_ENABLE="$(systemctl is-enabled "$service")"
echo "$IS_ACTIVE"
echo "$IS_ENABLE"
if [[ "$IS_ACTIVE" == "active" ]]; then
	if [[ "$IS_ENABLE" == "enabled" ]]; then
		echo " "$service" ACTIVR_ENABLED "
	else
		echo " "$service" ACTIVE_DISABLED "
	fi
else
	if [[ "$IS_ENABLE" == "enabled" ]]; then
		echo " "$service" INACTIVR_ENABLED "
	else
		echo " "$service" INACTIVE_DISABLED "
	fi
fi

