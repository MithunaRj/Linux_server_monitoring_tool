#!/bin/bash
output_file=logs/Server_monitoring_tool.log
echo "                     " >> $output_file
echo "------ NEW MONITORING REPORT -------" >> $output_file
today=$(date)
host=$(hostname)
echo "====== SERVER MONITORING TOOL($today) =====" >> $output_file
echo "$host:" >>  $output_file
cpu_info=$( top -b -n1 | grep "%Cpu(s)" | tr ',' ' ' | awk '{print int($8)}')
cpu_usage=$(( 100 - cpu_info ))
memory_info=($(free | awk 'NR==2 {print $2 " " $3}'))
memory_usage=$(( ${memory_info[1]} *100/ ${memory_info[0]} ))
disk_usage=$( df -h | awk '{ if ( $6 == "/") print $5}' | tr -d "%")
Usage_Monitoring() {
		echo "$1 Usage is $2%" >> $output_file
}
Usage_Monitoring "CPU" "$cpu_usage"
Usage_Monitoring "Memory" "$memory_usage"
Usage_Monitoring "disk" "$disk_usage"
if [ $disk_usage -gt 80 ]; then
	        echo "Alert: immediate action required , Disk usage is high" >> $output_file
fi

High_cpu_consumption=($( ps aux --sort=-%cpu | awk 'NR==2 {print $1 " "  $3}'))
High_memory_consumption=($(  ps aux --sort=-%mem | awk 'NR==2 {print $1 " "  $3}'))
Consumption_Monitoring() {
		    echo "$1 is from $2" >> $output_file
}
Consumption_Monitoring "High_cpu_consumption" "$High_cpu_consumption"
Consumption_Monitoring "High_memory_consumption" "$High_memory_consumption"

