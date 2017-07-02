.class public Lcom/yiliao/android/openapis/sdk/YLAPIFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createYLAPI(Landroid/content/Context;)Lcom/yiliao/android/openapis/sdk/IYLAPI;
    .locals 1

    new-instance v0, Lcom/yiliao/android/openapis/sdk/f;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createYLAPI(Landroid/content/Context;Z)Lcom/yiliao/android/openapis/sdk/IYLAPI;
    .locals 1

    new-instance v0, Lcom/yiliao/android/openapis/sdk/f;

    invoke-direct {v0, p0, p1}, Lcom/yiliao/android/openapis/sdk/f;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
