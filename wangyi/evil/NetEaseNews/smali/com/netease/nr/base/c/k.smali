.class Lcom/netease/nr/base/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/c/j;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/c/k;->a:Lcom/netease/nr/base/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/c/k;->a:Lcom/netease/nr/base/c/j;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/c/j;->a(J)V

    return-void
.end method
