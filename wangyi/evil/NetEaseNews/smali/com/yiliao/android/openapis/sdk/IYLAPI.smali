.class public interface abstract Lcom/yiliao/android/openapis/sdk/IYLAPI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract closeYLChannel()V
.end method

.method public abstract gainIYLAPIVersion()Ljava/lang/String;
.end method

.method public abstract handleIntent(Landroid/content/Intent;Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnFromYLHandler;)V
.end method

.method public abstract isOpenYLChannel()Z
.end method

.method public abstract isRegisteredApp()Z
.end method

.method public abstract isYLAppInstalled()Z
.end method

.method public abstract isYLAppSupportAPI()Z
.end method

.method public abstract openYLChannel()V
.end method

.method public abstract registerApp()Z
.end method

.method public abstract registerHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
.end method

.method public abstract sendShareReq(Lcom/yiliao/android/openapis/model/BaseReq;)V
.end method

.method public abstract unRegisterApp()V
.end method

.method public abstract unRegisterHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
.end method

.method public abstract upgradeMainApp()V
.end method
