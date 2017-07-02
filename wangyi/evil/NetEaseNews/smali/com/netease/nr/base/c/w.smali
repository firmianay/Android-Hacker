.class Lcom/netease/nr/base/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/c/v;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/c/w;->a:Lcom/netease/nr/base/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/c/w;->a:Lcom/netease/nr/base/c/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/v;->a(Lcom/netease/nr/base/c/v;Z)Z

    return-void
.end method
