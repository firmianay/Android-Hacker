.class Lcom/netease/ad/context/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/ad/context/NTESAdTest;


# direct methods
.method constructor <init>(Lcom/netease/ad/context/NTESAdTest;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/context/c;->a:Lcom/netease/ad/context/NTESAdTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/context/c;->a:Lcom/netease/ad/context/NTESAdTest;

    iget-object v0, v0, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    invoke-virtual {v0}, Lcom/netease/ad/a;->a()Lcom/netease/ad/e;

    return-void
.end method
