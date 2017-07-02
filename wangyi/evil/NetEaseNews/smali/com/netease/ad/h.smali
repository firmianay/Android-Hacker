.class Lcom/netease/ad/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/ad/AdView;


# direct methods
.method constructor <init>(Lcom/netease/ad/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/h;->a:Lcom/netease/ad/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/h;->a:Lcom/netease/ad/AdView;

    invoke-virtual {v0}, Lcom/netease/ad/AdView;->b()V

    return-void
.end method
