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
Get-Module powershellget -ListAvailable

# Install Az Module in Current User Scope
# MEMO: 安裝 Az Module到目前使用者的範圍(現在是以管理者的角度去操作)，而不是整台window server都裝，因為只有管理員能夠操作，而不是每個人都能夠使用
# 程式碼說明：安裝 Az模組，範圍是給當前使用者，模組來源是從 PsGallery這個 repository來的，而 -Force則是不管以前有沒有裝過或是有沒有衝突，安裝就對了的意思
Install-Module -Name Az -Scope CurrentUser -Repository psgallery -Force


# Update Az Module
Update-Module -Name Az*

# Check the Installed Module Versions
# 查看所有已安裝的 Az模組
Get-InstalledModule -Name Az.*
# 以 Az.compute模組為例，查看所有已安裝的版本
Get-InstalledModule -Name Az.compute -AllVersions