.class Lcom/netease/ad/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/ad/a;


# direct methods
.method constructor <init>(Lcom/netease/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/c;->a:Lcom/netease/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/c;->a:Lcom/netease/ad/a;

    invoke-virtual {v0}, Lcom/netease/ad/a;->c()V

    return-void
.end method
