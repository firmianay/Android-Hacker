.class Lcom/netease/ad/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ad/widget/b;


# direct methods
.method constructor <init>(Lcom/netease/ad/widget/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/widget/c;->b:Lcom/netease/ad/widget/b;

    iput-object p2, p0, Lcom/netease/ad/widget/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ad/widget/c;->b:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ad/widget/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ad/h/e;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
