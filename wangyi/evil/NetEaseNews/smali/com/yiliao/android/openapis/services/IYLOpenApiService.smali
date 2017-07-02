.class public interface abstract Lcom/yiliao/android/openapis/services/IYLOpenApiService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract asyncRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkVersion()Ljava/lang/String;
.end method

.method public abstract isRegistered(Ljava/lang/String;)Z
.end method

.method public abstract registerAppId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerCallback(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V
.end method

.method public abstract syncRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract unRegisterAppId(Ljava/lang/String;)V
.end method

.method public abstract unregisterCallback(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V
.end method
