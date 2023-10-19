#!/bin/sh
# Version 1.0

METRIC="$1"

if [ -z "$1" ]; then
    echo "Please specify a metric"
    exit 1
fi

case $METRIC in

        'UNSPECIFIED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 0:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'UNALLOCATED_NUMBER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 1:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NO_ROUTE_TRANSIT_NET')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 2:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NO_ROUTE_DESTINATION')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 3:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'CHANNEL_UNACCEPTABLE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 6:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'CALL_AWARDED_DELIVERED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 7:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NORMAL_CLEARING')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 16_Up:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NORMAL_CLEARING_CANCEL')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 16:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'USER_BUSY')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 17:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NO_USER_RESPONSE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 18:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NO_ANSWER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 19:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'SUBSCRIBER_ABSENT')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 20:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'CALL_REJECTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 21:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NUMBER_CHANGED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 22:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'REDIRECTION_TO_NEW_DESTINATION')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 23:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'EXCHANGE_ROUTING_ERROR')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 25:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'DESTINATION_OUT_OF_ORDER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 27:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INVALID_NUMBER_FORMAT')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 28:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'FACILITY_REJECTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 29:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'RESPONSE_TO_STATUS_ENQUIRY')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 30:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NORMAL_UNSPECIFIED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 31:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NORMAL_CIRCUIT_CONGESTION')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 34:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NETWORK_OUT_OF_ORDER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 38:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'NORMAL_TEMPORARY_FAILURE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 41:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'SWITCH_CONGESTION')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 42:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'ACCESS_INFO_DISCARDED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 43:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'REQUESTED_CHAN_UNAVAIL')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 44:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'PRE_EMPTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 45:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'RESOURCE_UNAVAILABLE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 47:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'FACILITY_NOT_SUBSCRIBED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 50:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'OUTGOING_CALL_BARRED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 52:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INCOMING_CALL_BARRED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 54:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'BEARERCAPABILITY_NOTAUTH')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 57:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'BEARERCAPABILITY_NOTAVAIL')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 58:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'SERVICE_UNAVAILABLE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 63:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'BEARERCAPABILITY_NOTIMPL')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 65:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'CHAN_NOT_IMPLEMENTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 66:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'FACILITY_NOT_IMPLEMENTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 69:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'SERVICE_NOT_IMPLEMENTED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 79:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INVALID_CALL_REFERENCE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 81:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INCOMPATIBLE_DESTINATION')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 88:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INVALID_MSG_UNSPECIFIED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 95:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'MANDATORY_IE_MISSING')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 96:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'MESSAGE_TYPE_NONEXIST')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 97:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'WRONG_MESSAGE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 98:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'IE_NONEXIST')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 99:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INVALID_IE_CONTENTS')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 100:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'WRONG_CALL_STATE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 101:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'RECOVERY_ON_TIMER_EXPIRE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 102:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'MANDATORY_IE_LENGTH_ERROR')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 103:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'PROTOCOL_ERROR')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 111:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'INTERWORKING')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 127:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'ORIGINATOR_CANCEL')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 487:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'CRASH')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 500:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'SYSTEM_SHUTDOWN')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 501:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'LOSE_RACE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 502:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'MANAGER_REQUEST')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 503:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'BLIND_TRANSFER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 600:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'ATTENDED_TRANSFER')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 601:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'ALLOTTED_TIMEOUT')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 602:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'USER_CHALLENGE')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 603:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'MEDIA_TIMEOUT')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 604:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'PICKED_OFF')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 605:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'USER_NOT_REGISTERED')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 606:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'PROGRESS_TIMEOUT')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 607:' | cut -d ':' -f2 | awk '{print $1}' ;;
        'GATEWAY_DOWN')       python /var/log/asterisk/cdr-csv/hangup_cause.py | grep ' 609:' | cut -d ':' -f2 | awk '{print $1}' ;;


    *)  echo "Not selected metric"
        exit 0
        ;;
esac