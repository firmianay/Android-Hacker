.class public Lcom/netease/nr/biz/offline/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/nr/biz/offline/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/netease/nr/biz/offline/e;

    invoke-direct {v0, v2}, Lcom/netease/nr/biz/offline/e;-><init>(Lcom/netease/nr/biz/offline/c;)V

    sput-object v0, Lcom/netease/nr/biz/offline/b;->a:Lcom/netease/nr/biz/offline/d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/offline/f;

    invoke-direct {v0, v2}, Lcom/netease/nr/biz/offline/f;-><init>(Lcom/netease/nr/biz/offline/c;)V

    sput-object v0, Lcom/netease/nr/biz/offline/b;->a:Lcom/netease/nr/biz/offline/d;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Message;)Landroid/app/Notification;
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/offline/b;->a:Lcom/netease/nr/biz/offline/d;

    invoke-interface {v0, p0, p1}, Lcom/netease/nr/biz/offline/d;->a(Landroid/content/Context;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
