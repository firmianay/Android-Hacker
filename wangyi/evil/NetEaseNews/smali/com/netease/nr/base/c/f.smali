.class Lcom/netease/nr/base/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/c/g;

.field final synthetic b:Lcom/netease/nr/base/c/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/c/e;Lcom/netease/nr/base/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/c/f;->b:Lcom/netease/nr/base/c/e;

    iput-object p2, p0, Lcom/netease/nr/base/c/f;->a:Lcom/netease/nr/base/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/pc/b/c;

    invoke-direct {v0}, Lcom/netease/nr/biz/pc/b/c;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/base/c/f;->a:Lcom/netease/nr/base/c/g;

    iget-object v1, v1, Lcom/netease/nr/base/c/g;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/b/c;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/netease/nr/base/c/f;->b:Lcom/netease/nr/base/c/e;

    invoke-static {v1}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/c/f;->a:Lcom/netease/nr/base/c/g;

    iget-object v2, v2, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/util/c/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
