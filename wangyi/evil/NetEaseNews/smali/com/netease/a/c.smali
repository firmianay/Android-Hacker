.class Lcom/netease/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/a/b;


# direct methods
.method constructor <init>(Lcom/netease/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/a/c;->a:Lcom/netease/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/netease/a/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/a/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/a/c;->a:Lcom/netease/a/b;

    invoke-static {}, Lcom/netease/a/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netease/a/b;->a(Lcom/netease/a/b;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
