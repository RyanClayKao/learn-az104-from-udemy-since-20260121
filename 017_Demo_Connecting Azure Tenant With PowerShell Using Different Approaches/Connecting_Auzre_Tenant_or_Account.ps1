#### Connecting Auzre Tenant / Account ####
###########################################

# Sign in interactively
# 適用狀況：使用 Windows系統的電腦直接登入 Microsoft Azure PowerShell
# MEMO: 輸入這個指令後，直接會開啟Azure的登入畫面；輸入 Azure帳號密碼後，就能夠登入成功
Connect-AzAccount

# Sign in interactively using a specific Subscription ID
# 適用狀況：使用 Windows系統的電腦直接登入 Microsoft Azure PowerShell，使用特定 Subscription
# MEMO: 一樣會開啟 Azure登入畫面
Connect-AzAccount -Tenant "<你想要登入使用的 Subscription ID>"


# Sign in using Device code authentication
# 適用狀況：使用非 Windows的系統要登入 Microsoft Azure PowerShell，像是 Linux、MacOS
# MEMO: 
#   1. 會顯示一個登入網址 "https://microsoft.com/devicelogin"，以及一個登入代碼
#   2. 使用瀏覽器進入那個網址，會要求輸入登入代碼，然後就是輸入你的帳號密碼資訊，之後就能夠用授權這台裝置登入
Connect-AzAccount -UseDeviceAuthentiction