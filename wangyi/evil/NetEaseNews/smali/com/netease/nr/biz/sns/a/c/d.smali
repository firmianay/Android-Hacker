.class Lcom/netease/nr/biz/sns/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/c;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/a/c/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/a/c/d;->a:Lcom/netease/nr/biz/sns/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/tauth/f;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/d;->a:Lcom/netease/nr/biz/sns/a/c/c;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/c/c;->a(Lcom/netease/nr/biz/sns/a/c/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sqh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
