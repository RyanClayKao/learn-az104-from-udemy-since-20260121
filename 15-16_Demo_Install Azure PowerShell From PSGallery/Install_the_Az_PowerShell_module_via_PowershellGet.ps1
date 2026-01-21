#### Install the Az PowerShell module via PowerShellGet ####
############################################################

# There should be atleast RemoteSigned level for Execution Policy
# MEMO: 確認執行策略，至少要是「RemoteSigned」級別才能夠執行；如果沒有限制就會看到「Unrestricted」
Get-ExecutionPolicy

# MEMO: 如果要變更執行策略，可以執行下面的指令，選擇想要的執行策略級別(可以用 PowerShell ISE 自動補全的提示查看)
# 執行策略級別選項：AllSigned、Bypass、Default、RemoteSigned、Restricted、Undefined、Unrestricted
# 指令範例：
# Set-ExecutionPolicy -ExecutionPolicy <你要的Execution Policy級別>

# Ensure if PowershellGet Module is installed

# Install Az Module in Current User Scope

# Update Az Module

# Check the Installed Module Versions