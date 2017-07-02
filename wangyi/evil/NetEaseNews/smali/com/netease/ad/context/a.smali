.class Lcom/netease/ad/context/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/d;


# instance fields
.field final synthetic a:Lcom/netease/ad/a;

.field final synthetic b:Lcom/netease/ad/context/NTESAdTest;


# direct methods
.method constructor <init>(Lcom/netease/ad/context/NTESAdTest;Lcom/netease/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/context/a;->b:Lcom/netease/ad/context/NTESAdTest;

    iput-object p2, p0, Lcom/netease/ad/context/a;->a:Lcom/netease/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/ad/a;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "get adInfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ad/context/a;->a:Lcom/netease/ad/a;

    invoke-virtual {v0}, Lcom/netease/ad/a;->a()Lcom/netease/ad/e;

    return-void
.end method
