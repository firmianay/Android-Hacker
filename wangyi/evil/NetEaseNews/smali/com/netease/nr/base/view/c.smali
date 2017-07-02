.class Lcom/netease/nr/base/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;

.field final synthetic b:Lcom/netease/nr/base/view/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/a;Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/c;->b:Lcom/netease/nr/base/view/a;

    iput-object p2, p0, Lcom/netease/nr/base/view/c;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/c;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
