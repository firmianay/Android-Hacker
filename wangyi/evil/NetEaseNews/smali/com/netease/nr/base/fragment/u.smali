.class Lcom/netease/nr/base/fragment/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/u;->a:Lcom/netease/nr/base/fragment/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/u;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/t;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/u;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
