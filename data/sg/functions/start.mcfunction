# SG start
## with countdown


# reset game
function sg:admin/reset


# countdown
## 3
schedule function sg:system/count/3 1s
## 2
schedule function sg:system/count/2 2s
## 1
schedule function sg:system/count/1 3s
## GO
schedule function sg:admin/start 4s