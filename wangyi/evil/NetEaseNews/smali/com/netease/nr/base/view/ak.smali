.class Lcom/netease/nr/base/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ak;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ak;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ak;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a()V

    :cond_0
    return-void
.end method
