.class Lcom/netease/nr/base/fragment/x;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/x;->a:Lcom/netease/nr/base/fragment/t;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/x;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/t;->b(Lcom/netease/nr/base/fragment/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/x;->a:Lcom/netease/nr/base/fragment/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/x;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/fragment/t;->b(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/x;->a:Lcom/netease/nr/base/fragment/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;Z)Z

    goto :goto_0
.end method
