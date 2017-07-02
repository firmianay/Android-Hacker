.class Lcom/netease/nr/biz/pc/a/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/s;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/t;->a:Lcom/netease/nr/biz/pc/a/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/t;->a:Lcom/netease/nr/biz/pc/a/s;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/s;->a(Lcom/netease/nr/biz/pc/a/s;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://reg.163.com/reg/reg_mob2.jsp?product=newsclient"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
