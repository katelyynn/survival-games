# SG start
## with countdown


# countdown
## 3
function sg:system/count/3
## 2
schedule function sg:system/count/2 1s
## 1
schedule function sg:system/count/1 2s
## GO
schedule function sg:admin/start 3s